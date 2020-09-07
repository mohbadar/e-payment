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

        
def migrate_data(src_engine, dest_engine, src_table, desc_table, columns_map, src_orderby_col = 'id', _offset=20000):
    now = datetime.datetime.now()
    
    logging.info('migrate_data() Started - ' + now.strftime("%Y-%m-%d %H:%M:%S"))
    
    try:
        total_src_count_query = 'SELECT count(*) as COUNT FROM ' + src_table
        total_src_count_df = pd.read_sql_query(total_src_count_query, src_engine)
        total_src_count = total_src_count_df['COUNT'].iloc[0]
        logging.info('Total Source Table Rows: ' + str(total_src_count))
        
        
        src_select_query = 'SELECT '
        for col_def in columns_map:
            # if column name is not defined then that entry is ignored
            if(len(col_def['src_col'])>0):
                src_select_query = src_select_query + col_def['src_col'] + ', '

        # remove last 2 characters
        src_select_query = src_select_query[:-2]
        src_select_query = src_select_query + ' FROM ' + src_table + ' ORDER BY ' + src_orderby_col + ' ASC'
        
        LOWER_LIMIT = 0
        OFFSET = _offset
        while(total_src_count > LOWER_LIMIT):
            src_select_query_with_limit = src_select_query + ' LIMIT ' + str(LOWER_LIMIT)
            if OFFSET > 0 :
                src_select_query_with_limit = src_select_query_with_limit + ' OFFSET ' + str(OFFSET) 
        
            print(src_select_query_with_limit)
            result_set = pd.read_sql_query(src_select_query_with_limit, src_engine)
            
            LOWER_LIMIT = LOWER_LIMIT + OFFSET

# --------------------------------------------------------------------
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
            # Insert into destination table
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

            with dest_engine.connect() as conn:
                result = conn.execute(des_insert_query)
                
    except KeyError:
        logging.debug(KeyError)
        result_set = KeyError
        
    total_records = len(result_set)
    logging.info('Total Records: ' + str(total_records))
    logging.info('migrate_data() Ended')
    return total_records