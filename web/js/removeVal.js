function removeValues(){
    
    var alerted = localStorage.getItem('alerted') || '';
    if (alerted == 'yes') {
     
     localStorage.setItem('alerted','no');
    }
    
}



