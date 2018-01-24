
window.onload = function () {

    document.getElementById("idName").addEventListener("blur", ckName);    
    document.getElementById("idPwd").addEventListener("blur", ckPwd);  
    document.getElementById("idT").addEventListener("input", ckT);   
}  
  
          
    function ckName() 
    {
        var theName=document.getElementById("idName").value;
        var re = /^[\u4e00-\u9fff]{2,}$/;                   
        if(theName.length>=2)
        {
                                   
            if (re.test(theName))
            {
            document.getElementById("idsp").innerHTML=
            "<img src='Images/cor.png'><span style='color:green'>正確</span>";
            }
            else
            {
            document.getElementById("idsp").innerHTML=
            "<img src='Images/error.png'><span style='color:red'>請輸入中文</span>"; 
            };
        }
        else if(theName=="")
        {
            document.getElementById("idsp").innerHTML=
            "<img src='Images/error.png'><span style='color:red'>you must enter</span>"; 
        }                            
    
        else
        {
            document.getElementById("idsp").innerHTML=
            "<img src='Images/error.png'><span style='color:red'>至少兩個字</span>"; 
        };
    }
            

    function ckPwd() 
    {
    
    var thePwd = document.getElementById("idPwd").value;
    var re = /^(?=.*[0-9])(?=.*[A-Za-z])(?=.*[!@#\$%\^&\*])(?!.*[\u4e00-\u9fa5])(?!.*[\s]).{6,}$/;          
    if(thePwd.length>=6)
        if (re.test(thePwd))
        {
            document.getElementById("idpsp").innerHTML=
            "<img src='Images/cor.png'><span style='color:green'>正確</span>";
        }
        else
        {
            document.getElementById("idpsp").innerHTML=
            "<img src='Images/error.png'><span style='color:red'>格式有誤</span>";
        }

                  
    else if(thePwd=="")
        {
            document.getElementById("idpsp").innerHTML=
            "<img src='Images/error.png'><span style='color:red'>you must enter</span>"; 
        }                            
    
    else
        {
            document.getElementById("idpsp").innerHTML=
            "<img src='Images/error.png'><span style='color:red'>至少六個字</span>"; 
        };
    }
    
  


    

    function ckT() 
    {
        var re = /^\d{4}[\/]{1}\d{1,2}[\/]{1}\d{1,2}$/;
        var theDate = document.getElementById("idT").value
        var thisDate = new Date(theDate);
        var thisDay = thisDate.getDate();


        if (re.test(theDate)) 
        { 
        var thisDateSubDay = theDate.split("/");
            if (thisDateSubDay[2] == thisDay) 
            {
            document.getElementById("idtsp").innerHTML=
            "<img src='Images/cor.png'><span style='color:green'>正確</span>";
            }  
            else
            {
            document.getElementById("idtsp").innerHTML=
            "<img src='Images/error.png'><span style='color:red'>日期錯誤</span>";  
            }
        }    
        else
        {
        document.getElementById("idtsp").innerHTML=
        "<img src='Images/error.png'><span style='color:red'>正確日期格式為yyyy/mm/dd</span>";  
        }        

    }

