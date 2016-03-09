#! python3
# mail_lists.py - assign a name with more than 3 letters

email_list = {
'lsit_a': 'abcd@website1.com,bcd@website2.com',
'list_b':'aaab@website2.com, aaaabc@website3.com',
'list_c':'new123@website4.com, new222@website5.com',             
}
import sys, pyperclip
if len(sys.argv) < 2:
    print('Usage of the program is: py mail_lists.py [list_name] - copy the list items from the dictionary key item')
    sys.exit()
list_name = sys.argv[1] # first command line arg is the dictionary key item name
if list_name in email_list:
    pyperclip.copy(email_list[list_name])
    print('the mail list ' + list_name + ' has been copied to clipboard.')
else:
    print('There is no mail list name ' + list_name)
