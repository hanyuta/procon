function CommentBar(){
  
  document.getElementById('openButton').addEventListener('click', function() {
    var sidebar = document.getElementById('sidebar');
    if (sidebar.style.width == '0px' || sidebar.style.width == '') {
      sidebar.style.width = '350px';
      sidebar.style.right = '0';
    } else {
      sidebar.style.width = '0';
      sidebar.style.right = '-350px';
    }
  });
}

window.addEventListener("turbo:load",CommentBar)