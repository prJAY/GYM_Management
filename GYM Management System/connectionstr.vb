Module connectionstr
    Function constr() As String
        Dim str = "Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Development\Projects\GYM Management System\GYM Management System\GYM Management System\App_Data\GYM_DB.mdf;Integrated Security=True;User Instance=True"
        Dim str2 = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Development\Projects\GYM Management System\GYM Management System\GYM Management System\App_Data\GYM_DB.mdf;Integrated Security=True"
        Return str2
    End Function
End Module
