// ************************ Drag and drop ***************** //
// Area drag and drop works on
let dropArea = document.getElementById("drop-area")
let uploadProgress = []
let progressBar = document.getElementById('progress-bar')
const supportedFileTypes = ".gdoc,.doc,.docx,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document,.pdf,image/*,.odt,.docm,.dot,.dotx,.dotm,.txt,.xps,.rtf,.ods,.xls,.xlsx,.xlsm,.xlt,.xltx,.xltm,.ppt,.pptx,.pptm,.pps,.ppsx,.ppsm,.pot,.potx,.potm,.epub,.mobi"

    // Prevent default drag behaviors
    ;['dragenter', 'dragover', 'dragleave', 'drop'].forEach(eventName => {
        dropArea.addEventListener(eventName, preventDefaults, false)
        document.body.addEventListener(eventName, preventDefaults, false)
    })

    // Highlight drop area when item is dragged over it
    ;['dragenter', 'dragover'].forEach(eventName => {
        dropArea.addEventListener(eventName, highlight, false)
    })

    // Unhighlight area when dragged away from
    ;['dragleave', 'drop'].forEach(eventName => {
        dropArea.addEventListener(eventName, unhighlight, false)
    })

// Handle dropped files
dropArea.addEventListener('drop', handleDrop, false)

function preventDefaults(e) {
    e.preventDefault()
    e.stopPropagation()
}

// Highlight drop area
function highlight(e) {
    dropArea.classList.add('highlight')
    progressBar.hidden = false
}

// Unhighlight drop area
function unhighlight(e) {
    dropArea.classList.remove('active')
    progressBar.hidden = true
}

// handle droping of files
function handleDrop(e) {
    let dt = e.dataTransfer
    let files = dt.files
    unhideProgress()
    handleFiles(files)
}

// hide the progress bar
function hideProgress(){
    progressBar.classList.add('visually-hidden')
    progressBar.hidden = true
}
// unhide progressbar
function unhideProgress(){
    progressBar.classList.remove('visually-hidden')
    progressBar.hidden = false
}

function initializeProgress(numFiles) {
    progressBar.value = 0
    uploadProgress = []

    for (let i = numFiles; i > 0; i--) {
        uploadProgress.push(0)
    }
}

function updateProgress(fileNumber, percent) {
    uploadProgress[fileNumber] = percent
    let total = uploadProgress.reduce((tot, curr) => tot + curr, 0) / uploadProgress.length
    console.debug('update', fileNumber, percent, total)
    progressBar.value = total
}

function handleFiles(files) {
    files = checkFiles([...files])
    initializeProgress(files.length)
    files.forEach(uploadFile)
    files.forEach(previewFile)
}

function checkFiles(files){
    let cleanFiles = []
    for (let file of files){
        let extension = getFileExtension(file.name)
        if (supportedFileTypes.includes(extension) | file['type'].includes('image') && Boolean(extension)) {
            cleanFiles.push(file)
        } else {
            document.getElementById("upload-errors").classList.remove("visually-hidden")
            let ignoredFiles = document.getElementById("ignored-files"); // get the list to append the files to
            let li = document.createElement("li")
            li.appendChild(document.createTextNode(file.name))
            ignoredFiles.appendChild(li) // make list of unsupported files
        }
    }
    return cleanFiles
}

function getFileExtension(fileName){
    return fileName.slice((fileName.lastIndexOf(".") -1 >>> 0) + 2);
}

function previewFile(file) {
    let reader = new FileReader()
    reader.readAsDataURL(file)
    reader.onloadend = function () {
        let img = document.createElement('img')
        img.src = reader.result
        document.getElementById('gallery').appendChild(img)
    }
}

function uploadFile(file, i) {
    // TODO: add server url here
    var url = 'url'
    var xhr = new XMLHttpRequest()
    var formData = new FormData()
    xhr.open('POST', url, true)
    xhr.setRequestHeader('X-Requested-With', 'XMLHttpRequest')

    // Update progress (used to show progress indicator)
    xhr.upload.addEventListener("progress", function (e) {
        updateProgress(i, (e.loaded * 100.0 / e.total) || 100)
    })

    xhr.addEventListener('readystatechange', function (e) {
        if (xhr.readyState == 4 && xhr.status == 200) {
            updateProgress(i, 100) // <- Add this
        }
        else if (xhr.readyState == 4 && xhr.status != 200) {
            // Error. Inform the user
        }
    })

    formData.append('upload_preset', 'ujpu6gyk')
    formData.append('file', file)
    xhr.send(formData)
}