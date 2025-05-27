import tkinter as tk
import pymysql
def Login():
    username=user_entry.get()
    password=password_entry.get()
    conn=pymysql.connect(
        host="localhost",
        user="root",
        password="",
        database="bank"
        )
    cursor=conn.cursor()
    cursor.execute("select * from users where username='"+username+"' and password='"+password+"'")
    data=cursor.fetchone()
    if(data):
        if(data[1]=="admin" and data[2]=="admin"):
            print("Admin")
        elif(data[1]=="manager" and data[2]=="manager"):
            print("Manager")
        else:
            print("Customer")
    else:
        print("Invalid")
    

root=tk.Tk()
root.title("Banking System Analysis")
root.geometry("600x600")

tk.Label(root,text="Username").pack(pady=10)
user_entry=tk.Entry(root)
user_entry.pack(pady=10)

tk.Label(root,text="Password").pack(pady=10)
password_entry=tk.Entry(root)
password_entry.pack(pady=10)
tk.Button(root, text="Login", command=Login).pack(pady=10)

root.mainloop()

