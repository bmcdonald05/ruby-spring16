ARRAYS & ENUMERABLES

2.1.1 :001 > students = %w[April Bryant Amber Michelle Robert Traynham Diana]
 => ['April', 'Bryant', 'Amber', 'Michelle', 'Robert', 'Traynham', 'Diana']
2.1.1 :003 > students.include?('Marty')
 => false
2.1.1 :003 > students<<'Marty'
 => ['April', 'Bryant', 'Amber', 'Michelle', 'Robert', 'Traynham', 'Diana', 'Marty']
2.1.1 :004 > students.join('-/')
 => "April-/Bryant-/Amber-/Michelle-/Robert-/Traynham-/Diana-/Marty"
2.1.1 :005 > students.keep_if {|stu| stu.length > 6}
 => ["Michelle", "Traynham"]
2.1.1 :006 > students.collect {|stu| "#{stu} hello"}
=> ["Michelle hello", "Traynham hello"]
2.1.1 :007 > students
 => ["Michelle", "Traynham"]
2.1.1 :008 > students.collect! {|stu| "#{stu} hello"}
=> ["Michelle hello", "Traynham hello"]
2.1.1 :009 > students
 => ["Michelle hello", "Traynham hello"]
2.1.1 :010 > students.map {|stu| "#{stu} hello"}
=> ["Michelle hello", "Traynham hello"]
2.1.1 :011 > students
 => ["Michelle", "Traynham"]
2.1.1 :012 > students.map! {|stu| "#{stu} hello"}
=> ["Michelle hello", "Traynham hello"]

#NOTE map and collect are the same thing