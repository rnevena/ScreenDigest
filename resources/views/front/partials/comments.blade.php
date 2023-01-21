<div class="readers_comment col-md-8">
    <div class="entity_inner__title header_purple">
        <h2>Comments</h2>
    </div>
    <!-- entity_title -->

    <div class="media">
        <div class="media-body" id="comments">
        </div>

    </div>
    <!-- media end -->

</div>
<!--See Comments-->

@if((isset($user)))
<div class="entity_comments col-md-8">
    <div class="entity_inner__title header_black">
        <h2>Add a Comment</h2>
    </div>
    <!--Entity Title -->

    <div class="entity_comment_from">
        <form>

                @if($user->role_id==1)<input type="hidden" id="roleId" value="{{$user->role_id}}">@endif
                <input type="hidden" id="userId" value="{{$user->id}}">
                <div class="form-group comment">
                    <textarea class="form-control" id="comment" placeholder="Comment"></textarea>
                </div>
                    <input type="button" name="post" id="post" class="btn B rounded mx-auto" value="Submit"/>

        </form>
    </div>
    <!--Entity Comments From -->

</div>
<!--Add Comments -->
@endif
