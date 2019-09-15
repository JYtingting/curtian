window.onload=function(){
    var list=document.getElementById('list');
    var lis=list.children;
    //回复
    for (var i = 0; i < lis.length; i++)
    {
        lis[i].onclick=function(e)
        {
            var elem=e.target;//获得触发元素!!!
            switch (elem.className)
            {
                //回复按钮为蓝色
                case 'btn':
                    replyBox(elem.parentNode.parentNode);
                    break;
            }
        }

    function replyBox(box)
    {
        var list=box.getElementsByClassName('comment-list')[0];
        var div=document.createElement('div');
        div.className='comment-box clearfix';
        var html='<img class="myhead" src="images/my.jpg" alt=""/>'+
            '<div class="comment-content">'+
            '<p class="comment-text"><span class="user">我：</span>'+input.value+'</p>'+
            '</p>';
        div.innerHTML=html;
        list.appendChild(div);
        input.value='';
    }

        //输入框
        var input = lis[i].getElementsByTagName('input')[0];
        input.onfocus=function()
        {
            this.parentNode.className='text-box text-box-on';
            this.onkeyup();
        }
        input.onkeyup=function(){
            var len=this.value.length;
            var btn=this.parentNode.children[1];//回复按钮
            var word=this.parentNode.children[2];
            if (len==0||len>300)
            {
                btn.className='btn btn-off';
            }
            else{
                btn.className='btn';
                word.innerHTML=len+'/300';
            }
        }
    }
}