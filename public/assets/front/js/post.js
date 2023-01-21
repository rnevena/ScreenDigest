$(document).ready( function(){
    related();
    comments();
    $('#post').click(postComment)
});

//location href
function related(){
    var id=$("#post_id").val();
    console.log(id)
    $.ajax({
        url: url+"/related",
        type: "GET",
        data : { id: id},
        dataType: "json",
        success: function(data){
            var output = "";

            for(let d of data) {
                if(d.id!=id){
                    output +=
                        '<div class="media col-md-6" style="height:150px;">'+
                        '<div class="media-left">' +
                        '<a href="../posts/'+d.id+'" target="_blank">'+
                        `<img class="media-object" src="${urlImg}/${d.img}" style="width:200px;" alt="${d.title}"></a>`+
                        '</div>' +
                        '<div class="media-body">'+
                        '<h3 class="media-heading"><a href="../'+d.id+'">'+d.title+'</a></h3>'+
                        '</div>'+'</div>'
                }
            }
            //console.log(output)
            //alert('drugi')

            $('#related').html(output);

        },
        error: function(xhr, status, error) {
            console.log(xhr.status, error)
        }
    });
}

function comments(){
    let id=$("#newsCode").data('id')
    let user_id = $("#userId").val();
    let role_id = $("#roleId").val();
    $.ajax({
        url: url+"/comments",
        type: "GET",
        data : { id: id},
        dataType: "json",
        success: function(data){
            var output = "";
            let today = new Date();
            let date;
            for(let d of data.comments) {

                var x = new Date(d.created_at);

                if(today.getFullYear()==x.getFullYear() && today.getDate()==x.getDate() && today.getMonth()==x.getMonth()){
                    date = hoursMinutes(x)
                }
                else
                    date = x.getDate()+"/"+x.getMonth()+"/"+x.getFullYear()+" - "+hoursMinutes(x);



                // for(let u of data.comment_user){
                    output+= `<h2 class="media-heading"> ${d.users.name} ${d.users.surname} </h2>`;
                // }



                output+= '<p>' + `${d.comment}` + '</p>'+ `<br><p class="pr-2 mb-0 font-italic text-right">${date}</p>`
                if((user_id == d.user_id ) || (data.role != undefined))output+=`<a  style="background-color:rgb(231, 55, 55)" data-id="${d.id}" style="cursor:pointer;" class="deleteComm"> <span style="cursor: pointer;color:white;padding:1%;">X</span> </a><hr>`
            }

            if(data.comments.length == 0)
                output = `<h4>No comments.</h4>`
            //console.log(data.data)

            $('#comments').html(output);
            $('.deleteComm').click(deleteComment)

        }
    });
}

function postComment(){
    let post_id= $("#newsCode").data('id');
    let user_id = $("#userId").val();
    let comment = $.trim($('#comment').val())
console.log(post_id,user_id,comment)
    if(comment === "")
        console.log('nema')
    else{
        //alert('ovde')
        $.ajax({
            url: url+"/comment",
            type: "GET",
            data : { post_id: post_id, user_id: user_id, comment: comment},
            dataType: "text",
            success: function(data){
                $('#comment').val('')
                console.log(data)
                comments()
            },
            error: function(xhe,status,error) {
                console.log(xhr.status,error)
            }
        });
    }
}

function deleteComment(e){
    e.preventDefault()


    let id= $(this).data('id'); //id komentara
    console.log(id);
    $.ajax({
        url: url+"/deleteComment",
        type: "GET",
        data : { id: id},
        dataType: "text",
        success: function(data){

            console.log(data)
            comments()
        }
    });

}

function hoursMinutes(x){
    let date;
    date = x.getHours()+":";
    if(x.getMinutes()<10)
        date+="0"
    date+=x.getMinutes();

    return date;
}

