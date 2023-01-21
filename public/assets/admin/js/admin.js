$(document).ready( function(){
    // $("#password").keyup(confirm);

    $("#sort").change(searchSort);

    $("#filter").change(searchSort);
    sortX(1, 'X')
});

function confirm(){
    $value = $(this).val();
    $("#confirmPassword").val($value);
}

//ovde moze da ide register ili ispod samo da se ucita


function pagination(totalLinks, currentPage){
    let html = "";
    for(let i = 1; i <= totalLinks; i++){
        if(i != currentPage){
            html += `<li class="page-item"><a class="page-link" id="link${i}" data-page="${i}" href="#">${i}</a></li>`;
        }
        else{
            html += `<li class="page-item active"><a class="page-link" id = "link${i}" data-page="${i}" href="#">${i}</a></li>`;
        }
    }
    $(".pagination").html(html);
    $(".page-link").click(otherPosts);
}

function otherPosts(e){
    e.preventDefault();

    let page = $(this).data("page");
    sortX(page);
}

function searchSort(){
    sortX(1)
}

function sortX(page, x=null){
    var sort = $("#sort").val();
    var filter = $("#filter").val();
    console.log(sort,filter)
    if(sort || filter ||  x == 'X')
        $.ajax({
            url: url+"/adminSort",
            type: "GET",
            data : {page:page, filter:filter, sort:sort},
            dataType: "json",
            success: function(data){
                //console.log(data)

                var output = "";
                //console.log(data)

                for(let d of data.data) {
                    //alert(d)


                    output += '' +
                        '<tr>' +
                        `<td>${d.users.name} ${d.users.surname}</td> ` +
                        `<td>${d.activity}</td> ` +
                        `<td>${d.ip}</td> ` +
                        `<td>${d.date}</td> ` +
                        '</tr>'

                }

//
                // console.log(data)
                if(data.data.length == 0){
                    if(!($(".pagination").hasClass("d-none"))){
                        $(".pagination").addClass("d-none");

                    }
                    output = "No matches."
                }else{
                    if($(".pagination").hasClass("d-none")){
                        $(".pagination").removeClass("d-none");

                    }
                    pagination(data.last_page, data.current_page);
                }


                //pagination(data.last_page, data.current_page);
                $('#tbody_activities').html(output);

            }
        });
}
