$(document).ready( function(){
    searchSort();
    $("#btn_search").click(searchSort);
});

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
    searchSortX(page);
}

function searchSort(){
    searchSortX(1)
}

function searchSortX(page){
    var search = $("#input_search").val();
    var id= $("#cat_id").val();
    console.log(search, id);

        $.ajax({
            url: url+"/searchSort",
            type: "GET",
            data : {page:page, id: id, search:search},
            dataType: "json",
            success: function(data){
                console.log(data)

                var output = "";
                //console.log(data)
                for(let d of data.data) {
                    //alert(d
                        output += '' +
                            '<div class="col-md-4" style="height:350px;">' +
                            '<div class="category_article_body">' +
                            '<div class="top_article_img">' +
                            '<a href="../'+d.id+'" target="_blank">' +
                            `<img src="${urlImg}/${d.img}" width="100%" height="100%" alt="${d.title}"/></a>` +
                            '</div>'+
                            '<div class="category_article_title">' +
                            '<h5><a href="../'+d.id+'" target="_blank">'+ d.title +' </a></h5>' +
                            '</div>'+'</div>'+'</div>';

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

                $('#output_search').html(output);

            },
            error: function(xhr, status, error) {
                console.log(error)
            }
        });
}
