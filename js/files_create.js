  document.querySelector("#file-type").addEventListener("change",changeFormType)
    var file_type_selected = document.querySelector("#file-type").value

    // Changes the form title
    // Required that the for title has an id of form_title
    function changeFormTitle(titleFor){
        document.querySelector('#form_title').innerText = `Create a ${titleFor} File`
    }

    function hide(elemId){
        document.querySelector(elemId).setAttribute('class','animated fadeOutDown') 
        setTimeout(() => {
            document.querySelector(elemId).setAttribute('class','visually-hidden') 
        },250)
    }
    
    
    function unhide(elemId){
        document.querySelector(elemId).setAttribute('class', "animated fadeInDown") 
        setTimeout(() => {
            document.querySelector(elemId).setAttribute('class', "") 
        },1500)
        // document.querySelector("#portfolio").hidden = false
    }

    function getPortfolioForm(){
        changeFormTitle('Portfolio');
        hide("#portfolio");
        unhide("#domestic");
    }
    
    function getDomesticForm(){
        changeFormTitle('Domestic');
        hide("#domestic");
        unhide("#portfolio");
    }
    
    function changeFormType(event){
        e_target = (event.target.value)
        if(e_target == file_type_selected){
            console.log("Same value selected, animation skipped");
        }else{
            file_type_selected = e_target;
            Number(file_type_selected) ? getPortfolioForm("#cmform") : getDomesticForm("#cmform") 
        }
    }
    
