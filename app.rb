require 'net/http'

def add_note(date_of_add,due_date,subject,body)
url=URI("http://vez.hgf.mybluehost.me/paperless_api/insertnote.php?date=#{date_of_add}&due=#{due_date}&sub=#{subject}&body=#{body}")
insert=Net::HTTP.get(url)

end

def delete_note(subject)

end


def info()
puts "\t Welcome to The NoteKeeper Cli"
puts " Add notes , keep the subject short as its the uniq constraint "
end

add_note("test","test","gigsaid ggu su a","iusiu dyua ")

#user Interaction Panel

#Time.now.strftime("%d/%m/%Y %H:%M")
