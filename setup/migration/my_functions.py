import pandas as pd
# my_functions.py
import logging
import traceback

def migrate_data(src_engine, dest_engine, src_table, desc_schema, desc_table, columns_map, desc_index = 'id'):
    logging.info('migrate_data() Started')
    message = ''
    
    try:
        logging.info('SELECT statement build is started')
        src_select_query = 'SELECT '
        for col_def in columns_map:
            # if column name is not defined then that entry is ignored
            if(len(col_def['src_col'])>0):
                src_select_query = src_select_query + col_def['src_col'] + ', '

        # remove last 2 characters
        src_select_query = src_select_query[:-2]
        src_select_query = src_select_query + ' FROM ' + src_table
        logging.info('SELECT statement build is completed. Now running query to fetch the data')
        result_set = pd.read_sql_query(src_select_query, src_engine)
        message = 'Total Src Records: ' + str(len(result_set))
        
        logging.info('Total records fetched from source: ' + str(len(result_set)))
        
        dest_result_set = result_set.copy()
    # --------------------------------------------------------------------
#         logging.info('Cleaning the Resultset')
        # Clean ResultSet
#         dest_result_set = dest_result_set.fillna('')
#         for index, row in dest_result_set.iterrows():
#             for col_def in columns_map:
#                 if(index ==0):
#                     if(col_def['des_dtype'] == 'Integer'):
#                         print("This is Integer column " + col_def['src_col'])
#                         dest_result_set[col_def['src_col']].astype(int)
#                 break
#             break

    # --------------------------------------------------------------------
        
        new_columns_mapping = {}
        for col_def in columns_map:
            # if column name is not defined then that entry is ignored
            if(len(col_def['des_col']) > 0):
                # if des_col exists but src_col does not exists then we have to add a column with default value in dataframe
                if(len(col_def['src_col']) < 1):
                    dest_result_set[col_def['des_col']] = col_def['des_value']
                new_columns_mapping[col_def['src_col']] = col_def['des_col']
                
        dest_result_set = dest_result_set.rename(columns=new_columns_mapping)
        logging.info('Now inserting in destination table')
        dest_result_set.to_sql(desc_table, con = dest_engine, schema=desc_schema, index=False, if_exists = 'append', index_label=desc_index)

    # --------------------------------------------------------------------
        total_dest_count_query = 'SELECT count(*) as count FROM ' + desc_schema + '.' + desc_table
        total_dest_count_df = pd.read_sql_query(total_dest_count_query, dest_engine)
        total_dest_count = total_dest_count_df['count'].iloc[0]
        message = message + ' Total migrated Records to dest: ' + str(total_dest_count)
    
    except Exception as KeyError:
        logging.debug(KeyError)
        message = message + traceback.format_exc()
    
    
    logging.info('migrate_data() Ended')
    return message