
function FAQ() {    
    let question = document.getElementById('question').value;
    let answer = document.getElementById('answer').value;
    let success = document.getElementById('success');
    let error = document.getElementById('error');

    success.innerHTML = "";
    error.innerHTML = "";


    let xhttp = new XMLHttpRequest();

    xhttp.open('POST', '../controller/FAQ_validation.php', true);

   
    xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    let data = 'question=' + question + '&answer=' + answer;

    xhttp.send(data);

    xhttp.onreadystatechange = function(){
        if(this.readyState == 4 && this.status == 200){

           
                var response = JSON.parse(this.responseText);

                if (response.status === 1) {
                    success.innerHTML = response.message;
                } else {
                    error.innerHTML = response.message;
                }
            
        }
    }
}


