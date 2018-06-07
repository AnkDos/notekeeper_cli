require 'net/http'
require 'pp'
require 'json'

def add_note(date_of_add,due_date,subject,body)
url=URI("http://vez.hgf.mybluehost.me/paperless_api/insertnote.php?date=#{date_of_add}&due=#{due_date}&sub=#{subject}&body=#{body}")
insert=Net::HTTP.get(url)
end

def view_notes()
  url=Net::HTTP.get(URI("http://vez.hgf.mybluehost.me/paperless_api/view_notes.php"))
  fet=JSON.parse(url)
  pp fet
end

def delete_note(subject)
url=URI("http://vez.hgf.mybluehost.me/paperless_api/delete_note.php?sub=#{subject}")
del=Net::HTTP.get(url)
end


def info()
puts "\t Welcome to The NoteKeeper Cli"
puts " Add notes , keep the subject one word and no space as its the uniq constraint "
puts "To view on web visit http://vez.hgf.mybluehost.me/paperless_api/view_notes.php"
end

def options()
 puts  " "   
 puts "0. Exit"
 puts "1. Insert a new note "
 puts "2. View Notes"
 puts "3. Delete Notes"
end

#user Interaction Panel 
info()
options()

while true
    user_inp=Integer(gets)
    if user_inp==1
        add_date=Time.now.strftime("%d/%m/%Y %H:%M")
        puts "Add Due Date :" 
        due_date=String(gets)
        puts "Add Subject :"
        subs=String(gets)
        puts "Add Body :"
        body=String(gets)
        add_note(add_date,due_date,subs,body)
      puts "sucessfully added"
      options()

    elsif user_inp==2   
         view_notes()
         options()

    elsif user_inp==3
        puts "Enter Subject to proceed deleting"
        subs=String(gets)
        delete_note(subs)
        options()
        
    elsif user_inp==0
        break
    end
end