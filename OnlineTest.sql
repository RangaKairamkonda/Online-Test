Create Database OnlineTest;
use OnlineTest;
create table TestReg(Id Int identity(1,1), Username varchar(255) not null, Email varchar(255) not null, Password varchar(255) Not null);
select * from TestReg;

create Procedure TestReg_SignUp
 (@Username varchar(255),
 @Email varchar(255) , 
 @Password varchar(255))
  As Begin
  Insert into TestReg (Username,Email,Password) values(@Username,@Email,@Password)
  End;
  create procedure TestReg_login
  (@username varchar(255),
  @Password varchar(255))
  as Begin
   select count(*) from TestReg where Username=@username and Password=@Password;
   end;

   create procedure Test_Reg_getpins
   (@Email varchar(255))
   as begin
   select password from TestReg where Email=@Email;
   end;

  
  select * from TestReg;
  delete from TestReg where Id=4;

  create table Testresult (Id int identity(1,1),Name varchar(255),Result int)

  create procedure Proc_result
  (@Name varchar(255),
   @Result int)
  as begin
  Insert into Testresult (Name,Result) values(@Name,@Result);
  end;

  select * from Testresult;
  create procedure Proc_getmail
  (@Username varchar(255))
  as Begin
  select Email from TestReg where Username=@Username;
  end;