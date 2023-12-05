
 
 document.addEventListener("DOMContentLoaded", getdongData);
 

      function getdongData(){
            
            fetch("pop_dongService")
             .then(res => res.json())
             .then(json => callBackFunc(json));
      }
      function getseoData(){
            
            fetch("pop_seoService")
             .then(res => res.json())
             .then(json => callBackFunc(json)); 
      }
      function getnamData(){
            
            fetch("pop_namService")
             .then(res => res.json())
             .then(json => callBackFunc(json));
      }
      function getbookData(){
            
            fetch("pop_bookService")
             .then(res => res.json())
             .then(json => callBackFunc(json));
      }
      function getgsgData(){
            
            fetch("pop_gsgService")
             .then(res => res.json())
             .then(json => callBackFunc(json));
      }
   
      let MyChart;
      
      function callBackFunc(data){
         
         console.log(data)
         
         var name = [];
         var male = [];
         var female = [];
         
         for(let i=0; i<data.length;i++){
            name.push(data[i].pop_dong);
            male.push(data[i].pop_male);
            female.push(data[i].pop_female);
         }

         var ctx = document.getElementById('dongChart').getContext('2d');

         var options = {
            maintainAspectRatio : false,
            responsive : false,
            
            scales : {
               x : {
                  stacked : true,
                  beginAtZero : true,
                  ticks: {
                          color: '#FFFFFF'
                      }
               },
               y : {
                  stacked : true,
                  beginAtZero : true,
                  display : false
               }
            }
         }
         var pop_Chart = {
            type : 'bar',
            options : options,
            data : {
               labels : name,
               datasets : [ {
                  label : '남자',
                  data : male,
                  backgroundColor : [ 'rgba(124,181,236)' ]
               }, {
                  label : '여자',
                  data : female,
                  backgroundColor : [ 'rgba(255, 99, 132)' ]
               } ]
            }
         };   
         
         if(MyChart){
            MyChart.destroy();
         }
         MyChart = new Chart(ctx,pop_Chart);
      }
