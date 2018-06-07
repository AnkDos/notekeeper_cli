require 'net/http'
require 'pp'

def add_note(date_of_add,due_date,subject,body)
url=URI("http://vez.hgf.mybluehost.me/paperless_api/insertnote.php?date=#{date_of_add}&due=#{due_date}&sub=#{subject}&body=#{body}")
insert=Net::HTTP.get(url)
end

def view_notes()

end

def delete_note(subject)
url=URI("http://vez.hgf.mybluehost.me/paperless_api/delete_note.php?sub=#{subject}")
del=Net::HTTP.get(url)
end


def info()
puts "\t Welcome to The NoteKeeper Cli"
puts " Add notes , keep the subject one word and no space as its the uniq constraint "
end

def options()
 puts  ""   
 puts "1. Insert a new note "
 puts "2. View Notes"
 puts "3. Delete Notes"
end

#user Interaction Panel 



#Time.now.strftime("%d/%m/%Y %H:%M")
