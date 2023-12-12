

$(document).ready(function () {

    $.ajax({
        url: 'http://127.0.0.1:8000/api/todos',
        method: 'GET',
        dataType: 'json',
        success: function(data) {
            if (Array.isArray(data)) {
                data.forEach(item => {
                    const taskBox = $(`<div class="task-box bg-white mb-3 py-3 px-2 rounded">

                        <div class="task-box-header d-flex justify-content-between">

                            <div class="hero-section d-flex align-items-center">
                                <img class="hero-avatar rounded-circle me-1" src="./asset/images/client.jpeg" alt="">

                                <h5 class="hero-title">Client name</h5>
                            </div>

                            <div class="hero-section d-flex align-items-center">
                                <img class="hero-avatar rounded-circle me-1" src="./asset/images/developer.jpg" alt="">

                                <h5 class="hero-title">Sadik Istiak</h5>
                            </div>

                        </div>

                        <div class="task-box-content py-3 d-flex justify-content-between align-items-center">
                            <span class="text-truncate">
                                <i class="fa-solid fa-layer-group"></i>
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima amet voluptatibus numquam odio sunt obcaecati est consequatur voluptas quisquam rem, sapiente suscipit illo nulla praesentium dolor dicta nesciunt quos laborum?
                            </span>

                            <div class="fw-bold content-icon-box d-flex justify-content-center align-items-center rounded-1 px-2 py-1 ms-5">
                                <i class="fa-solid fa-file-lines me-2"></i>
                                ${item.id}
                            </div>
                        </div>


                        <div class="task-box-footer d-flex justify-content-between align-items-center">
                            <img class="hero-avatar rounded-circle me-1" src="./asset/images/developer.jpg" alt="">

                            <img class="hero-avatar rounded-circle me-1" src="./asset/images/developer.jpg" alt="">

                            <div class="fw-bold p-2 like-box d-flex justify-content-center align-items-center rounded-circle">
                                15+
                            </div>

                            <div class="fw-bold d-flex footer-box justify-content-center align-items-center rounded-1 px-2 py-1">
                                <i class="fa-regular fa-comments me-2"></i>
                                <span>15</span>
                            </div>

                            <div class="fw-bold d-flex footer-box justify-content-center align-items-center rounded-1 px-2 py-1">
                                <a data-bs-toggle="modal" href="#exampleModalToggle${item.id}" role="button">
                                    <i class="fa-solid fa-paperclip me-2"></i>
                                </a>
                                <div class="modal fade" id="exampleModalToggle${item.id}" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
                                    <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="exampleModalToggleLabel">Save attachment</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <form id="uploadForm${item.id}" enctype="multipart/form-data">
                                                <input type="hidden" id="task_id" name="task_id" value="${item.id}"/>
                                                <div class="d-flex gap-3">
                                                    <input class="form-control" type="file" id="files" name="files[]" multiple accept=".pdf, .doc, .docx">
                                                    <button type="button" data-taskid="${item.id}" class="btn btn-primary uploadButton">Save</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    </div>
                                </div>
                                
                                <span id="attachCount${item.id}"></span>
                            </div>

                            <div class="fw-bold d-flex footer-box justify-content-center align-items-center rounded-1 px-2 py-1">
                                <i class="fa-regular fa-calendar-days me-2"></i>
                                <span>30-12-2023</span>
                            </div>
                        </div>

                    </div>`);

                    if(item.type == "Incomplete"){
                        $('#incompleteTaskList').append(taskBox);
                    }else if(item.type == "To Do"){
                        $('#todoTaskList').append(taskBox);
                    }else if(item.type == "Doing"){
                        $('#doingTaskList').append(taskBox);
                    }else if(item.type == "Under Review"){
                        $('#underReviewTaskList').append(taskBox);
                    }else if(item.type == "Completed"){
                        $('#completedTaskList').append(taskBox);
                    }else if(item.type == "Over Due"){
                        $('#overDueTaskList').append(taskBox);
                    }
                });

                const incompleteItems = data.filter(item => item.type === 'Incomplete');

                $('#incompleteCount').text(incompleteItems.length);

                const toDoItems = data.filter(item => item.type === 'To Do');

                $('#todoCount').text(toDoItems.length);
                
                const doingItems = data.filter(item => item.type === 'Doing');

                $('#doingCount').text(doingItems.length);

                
                const reviewItems = data.filter(item => item.type === 'Under Review');

                $('#reviewCount').text(reviewItems.length);

                
                const completedItems = data.filter(item => item.type === 'Completed');

                $('#completedCount').text(completedItems.length);

                
                const dueItems = data.filter(item => item.type === 'Over Due');

                $('#dueCount').text(dueItems.length);

            } else {
                console.error('Unexpected data format. Expected an array.');
            }
        },
        error: function(error) {
            console.error('Error fetching data:', error);
        }
    });
    initializeAttachmentCount();

    $(document).on('click', '.uploadButton', function () {
        // Get task ID from the data attribute
        const taskId = $(this).data('taskid');
        uploadFiles(taskId);
        updateAttachmentCount(taskId);

        initializeAttachmentCount();
      });


      function initializeAttachmentCount() {
        $.ajax({
            url: 'http://127.0.0.1:8000/api/attachment-fetch',
            method: 'GET',
            dataType: 'json',
            success: function (data) {
                if (Array.isArray(data)) {
                    const attachmentCounts = {};

                    data.forEach(item => {
                        const fileNamesArray = JSON.parse(item.file_name);
                        const fileCount = fileNamesArray ? fileNamesArray.length : 0;

                        if (attachmentCounts.hasOwnProperty(item.task_id)) {
                            attachmentCounts[item.task_id] += fileCount;
                        } else {
                            attachmentCounts[item.task_id] = fileCount;
                        }

                        // Update the attachCount immediately for each task_id
                        $(`#attachCount${item.task_id}`).text(attachmentCounts[item.task_id]);
                    });
                }
            },
            error: function (error) {
                console.error('Error:', error.responseText);
            }
        });
    }



    
});






function uploadFiles(taskId) {
    const formData = new FormData(document.getElementById(`uploadForm${taskId}`));

    $.ajax({
        url: 'http://127.0.0.1:8000/api/attachment',
        method: 'POST',
        data: formData,
        dataType: 'json',
        contentType: false,
        processData: false,
        success: function (data) {
            if (data.message) {
                $('#exampleModalToggle' + taskId).modal('hide');
                $('.modal-backdrop').modal('hide');
                updateAttachmentCount(taskId);
                initializeAttachmentCount()
            } else {
                alert('Error uploading file');
            }
        },
        error: function (error) {
            console.error('Error:', error.responseText);
        }
    });
}