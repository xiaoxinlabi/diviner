/**
 * Created by Pauline on 16/2/23.
 */
$(function(){
    var billId = $_GET['billId'];
    getList(billId);
});

function getList(billId){
    $.ajax({
        url:bathPath+'/rest/number/query',
        data:{
            billId:billId
        },
        type: 'GET',
        dataType:'json'
    }).done(function(data){
        //alert(data.data.blackValue.toString().length);
        var inHtml;
        var titleHtml;
        var blackHtml;
        var personalHtml2;
        var personalHtml3;
        var additionHtml2;
        var additionHtml3;
        titleHtml= "手机号码战斗力大比拼：我的手机号码价值成功击败了"+data.data.overRate+"的用户！快来看看你的号码战斗力！";
        $(document).attr('title',titleHtml);

        if(data.data.blackContent2!=""){
            blackHtml = '<li>'+data.data.blackContent2+'</li>';
        }else{blackHtml="";}

        if(data.data.personalContent2!=""){
            personalHtml2 = '<li>'+data.data.personalContent2+'</li> '
        }else{personalHtml2="";}

        if(data.data.personalContent3!=""){
            personalHtml3 = '<li>'+data.data.personalContent3+'</li> '
        }else{personalHtml3="";}

        if(data.data.additionContent2!=""){
            additionHtml2 = '<li>'+data.data.additionContent2+'</li> '
        }else{additionHtml2="";}

        if(data.data.additionContent3!=""){
            additionHtml3 = '<li>'+data.data.additionContent3+'</li> '
        }else{additionHtml3="";}

        $('.ibody').children().remove();
        inHtml='<div class="phone-nub">' +
            '<div class="inn">'+data.data.billId+'</div></div>' +
            '<div class="msg">价值<em>'+data.data.totalValue+'</em>，击败了<em>'+data.data.overRate+'</em>的号码 </div> ' +
            '<div class="king"> <div class="nubs"> <div class="total">'+data.data.totalValue+'</div> ' +
            '<div class="style style-1"> <i>吉祥分</i> <em class="' +
            getDigitsClass(data.data.blackValue) +
            '">'+data.data.blackValue+'</em> ' +
            '<ul> ' +
            '<li>'+data.data.blackContent1+'</li> ' +blackHtml+
            '</ul> ' +
            '</div> ' +
            '<div class="style style-2"> ' +
            '<i>个性分</i> <em class="' +
            getDigitsClass(data.data.personalValue) +
            '">'+data.data.personalValue+'</em> ' +
            '<ul> ' +
            '<li>'+data.data.personalContent1+'</li> ' +
             personalHtml2 +
             personalHtml3 +
            '</ul> ' +
            '</div> ' +
            '<div class="style style-3"> <i>荣耀分</i><em class="' +
            getDigitsClass(data.data.additionValue) +
            '">'+data.data.additionValue+'</em> ' +
            '<ul> ' +
            '<li>'+data.data.additionContent1+'</li> ' +
             additionHtml2+
             additionHtml3+
            '</ul> ' +
            '</div> ' +
            '</div> ' +
            '</div> ' +
            '<div class="click">点击关注 <a href="#">大数据梦工厂</a> </div>';
        $('.ibody').append(inHtml);

        history.replaceState("","",bathPath+"/views/query.jsp");


    })
}

function getDigitsClass(num){

    switch (num.toString().length) {
        case 3 :
            return 'digits-3';
            break;
        case 4 :
            return 'digits-4';
            break;
        case 5 :
            return 'digits-5';
            break;
        case 6 :
            return 'digits-6';
            break;
        default :
            return 'digits-6';
            break;
    }

}

