function AdminPasswordFrom(){
    const adminCheckbox= document.getElementById('admin-checkbox');
    const changeInputForm=document.getElementById('admin-user-check');

    adminCheckbox.addEventListener('change',function(){
        const whichStyle= changeInputForm.getAttribute("style")
        if(whichStyle == "display:none;"){
            changeInputForm.setAttribute("style","display:block;");
        }else if(whichStyle == "display:block;"){
            changeInputForm.setAttribute("style","display:none;");
        };
    });
};

window.addEventListener("load",AdminPasswordFrom)
