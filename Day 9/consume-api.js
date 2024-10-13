const apiUrl = "http://localhost:8980/api/std/all";

function fetchStdData(){
    fetch(apiUrl)
    
        .then(response => response.json())
        .then(data =>{
            const usersTableBody = document.querySelector('#usersTable tbody');
            usersTableBody.innerHTML = '';

            data.forEach(user => {
                const row = document.createElement('tr');

                
            row.innerHTML=`
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.age}</td>
            `;
            
            usersTableBody.appendchild(row);
                
            });
        })

        .catch(errorr =>{
            console.error('Error fetching data :',error);
        });
    
}


window.onload = fetchStdData;