select id, count(*) as num
 
 from(
    select requester_id as id from requestaccepted
    union all
    select  accepter_id  from requestaccepted
 ) as friend_count
  group by id
  order by num desc
  limit 1
