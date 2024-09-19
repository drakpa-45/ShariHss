//region functions callable from jsp

function _baseURL() {
    return shariGlobal.baseURL() + "/";
}

function showConfirmation(){
    var isValid = true;
    $('#feed_back').find(':input').each(function () {
        if (isValid == true) {
            isValid = $('#feedback').validate().element(this);
        } else {
            $('#feedback').validate().element(this);
        }
    });
    if (isValid == true) {
        $('#confirmationModel').modal('show');
        $('#targetId').val('acknowledgementmessage');
        $('#messages').html('You are about to submit feedback. Are you sure to proceed ?');
    }
}

function submitApplication(){
    var feedbackForm = $("#feedbackForm");
    debugger;
        $.ajax({
            url: _baseURL()+'sendFeedback',
            type: 'GET',
            data: feedbackForm.serialize(),
            success: function (res) {
                if(res.status=='1'){
                    successMsg(res.text);
                }else{

                }
            }
        });
    $('#confirmationModel').modal('hide');
}

var shariHss = (function () {
    "use strict";
    //var formID = "#commissionForm";
    var isSubmitted = false;

    function sendFeedback(){
        $('#btnSend').on('click', function (e) {
            debugger;
            var isValid = true;
            $('#feed_back').find(':input').each(function () {
                if (isValid == true) {
                    isValid = $('#feedback').validate().element(this);
                } else {
                    $('#feedback').validate().element(this);
                }
            });
            if (isValid == true) {
                $.ajax({
                    url:_baseURL()+'sendFeedback',
                   // url:_baseURL()+'sendFeedback',
                    type: 'GET',
                    data: $('#feedback').serialize(),
                    success: function (res) {
                        if(res.status=='1'){
                            successMsg(res.text,_baseURL()+"");
                        }else{

                        }
                    }
                });
            }
        });
    }


    function newsUpdate(){
        $('#newsUpdateBtn').on('click', function (e) {
            debugger;
            var isValid = true;
            $('#newsUpdate').find(':input').each(function () {
                if (isValid == true) {
                    isValid = $('#news_update').validate().element(this);
                } else {
                    $('#news_update').validate().element(this);
                }
            });
            if (isValid == true) {
                $.ajax({
                    url:_baseURL()+'updateCurrentNews',
                    // url:_baseURL()+'sendFeedback',
                    type: 'GET',
                    data: $('#news_update').serialize(),
                    success: function (res) {
                        if(res.status=='1'){
                            successMsg(res.text,_baseURL()+"admin/updateNews");
                        }else{

                        }
                    }
                });
            }
        });
    }

    function newAnnouncement(){
        $('#announcementBtn').on('click', function (e) {
            debugger;
            var isValid = true;
            $('#announcement').find(':input').each(function () {
                if (isValid == true) {
                    isValid = $('#announcement_').validate().element(this);
                } else {
                    $('#announcement_').validate().element(this);
                }
            });
            if (isValid == true) {
                $.ajax({
                    url:_baseURL()+'admin/announcement',
                    // url:_baseURL()+'sendFeedback',
                    type: 'GET',
                    data: $('#announcement_').serialize(),
                    success: function (res) {
                        if(res.status=='1'){
                            successMsg(res.text,_baseURL()+"admin/announcement");
                        }else{

                        }
                    }
                });
            }
        });
    }

    function showFileSize() {
        $('tbody').on('change', '.file', function () {
            //this.files[0].size gets the size of your file.
            var exactSize = calFileSize(this);
            $(this).closest('tr').find('.file-size').text(exactSize);
            //alert(this.files[0].size);
        });
    }

    function calFileSize($this){
        var _size = $this.files[0].size;
        var fSExt = ['Bytes', 'KB', 'MB', 'GB'],
            i = 0;
        while (_size > 900) {
            _size /= 1024;
            i++;
        }
        return (Math.round(_size * 100) / 100) + ' ' + fSExt[i];
    }

    function init() {
        //save();
        sendFeedback();
        newsUpdate();
        newAnnouncement();
    }
    return {
        init: init
    };
})();

$(document).ready(function () {
        shariHss.init();

    }
);