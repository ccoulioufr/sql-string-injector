/* Test file */
select lower(table_name), count(*) 
    from user_tables t
    join user_tab_cols c on c.table_name = t.table_name
    where table_name = 'DUAL'
    group by lower(table_name);

begin
    proc_with_sql_param(/* SQL */ 'select lower(table_name), count(*) 
            from user_tables t
            join user_tab_cols c on c.table_name = t.table_name
            where table_name = :table_name
            group by lower(table_name)',
        'table_name' => 'DUAL');
end;