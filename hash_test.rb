require 'cgi'

def advname_unescape(row)
  row['advname'] = CGI::unescape(row['advname']) if row.key?('advname') and !row['advname'].empty?
end

row = {'advname' => 'a+a+b', 'view' => 5}

p "============================"
p row
p "============================"
p advname_unescape(row)
p "============================"
p row
p "============================"
