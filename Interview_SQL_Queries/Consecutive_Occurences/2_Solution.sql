select * from stadium s;

select * from stadium s where s.people > 100;

-- query with 3 cte to make understand the transformations done
with filtered_data as
      (select s.*,
          row_number() over(order by s.visit_date) rnum
        from stadium s
       where s.people > 100
      ),
  grouped_data as 
      (select f.*,
          str_to_date((f.visit_date - f.rnum),'%Y%m%d') grp
        from filtered_data f
      ),
  group_count_data as
      (select gd.*,
          count(1) over(partition by gd.grp) count_of_cons_days
        from grouped_data gd
      )
select *
  from group_count_data f
where f.count_of_cons_days >= 3;


-- grouped_data transformation is merged in filtered_Data cte but both queries will do same and result will be same
with filtered_data as
      (select s.*,
          str_to_date((s.visit_date - row_number() over(order by s.visit_date)),'%Y%m%d') grp
        from stadium s
       where s.people > 100
      ),
  group_count_data as
      (select gd.*,
          count(1) over(partition by gd.grp) count_of_cons_days
        from filtered_data gd
      )
select *
  from group_count_data f
where f.count_of_cons_days >= 3;