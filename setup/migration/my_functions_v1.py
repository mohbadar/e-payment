import pandas as pd
# my_functions.py
import logging


def get_value(row, col_def):
    value = '';
    # if column name is not defined then that entry is ignored
    if(len(col_def['src_col']) > 0):
        value = row[col_def['src_col']]
        
    try:
        if(len(col_def['des_value']) > 0):
            value = col_def['des_value']
    except KeyError:
        # Key is not present
        pass
    
    if(value == None):
        value = ''
    
    return value
        
def migrate_data(src_engine, dest_engine, src_table, desc_table, columns_map):
    logging.info('migrate_data() Started')
    
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
        logging.info('Total records fetched from source: ' + str(len(result_set))
        
    # --------------------------------------------------------------------
        logging.info('Cleaning the Resultset')
        # Clean ResultSet
        result_set = result_set.fillna('')
        for index, row in result_set.iterrows():
            for col_def in columns_map:
                if(index ==0):
                    if(col_def['des_dtype'] == 'Integer'):
                        result_set[col_def['src_col']].astype(int)
                break
            break

    # --------------------------------------------------------------------
        logging.info('INSERT statement build is started')
        des_insert_query = 'INSERT INTO ' + desc_table + ' ('
        for col_def in columns_map:
            # if column name is not defined then that entry is ignored
            if(len(col_def['des_col'])>0):
                des_insert_query = des_insert_query + col_def['des_col'] + ', '

        # remove last 2 characters
        des_insert_query = des_insert_query[:-2]
        des_insert_query = des_insert_query + ') VALUES ('



        for index, row in result_set.iterrows():
            for col_def in columns_map:  
                value = get_value(row, col_def)
                if(col_def['des_dtype'] == 'String'):
                    des_insert_query = des_insert_query + '\'' + value + '\', '
                elif(col_def['des_dtype'] == 'Integer'):
                    if(value == ''):
                        value = 'null'
                    des_insert_query = des_insert_query + ' ' + str(value) + ', '
                else:
                    des_insert_query = des_insert_query + value + ', '

            # remove last 2 characters
            des_insert_query = des_insert_query[:-2]
            des_insert_query = des_insert_query + '), ('

        # remove last 2 characters
        des_insert_query = des_insert_query[:-3]
        
        logging.info('INSERT statement build is completed. Now inserting in destination table')
        with dest_engine.connect() as conn:
            result = conn.execute(des_insert_query)
    except KeyError:
        logging.debug(KeyError)
        result_set = KeyError
        
    total_records = len(result_set)
    logging.info('Total Records: ' + str(total_records))
    logging.info('migrate_data() Ended')
    return total_records