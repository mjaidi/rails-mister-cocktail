import swal from 'sweetalert2';

function bindSweetAlertButtonDelete() {
  const swalButton = document.querySelectorAll('.sweet-alert-d');
  console.log(swalButton);
  console.log("something");
  swalButton.forEach((b) => {
    if (b) { // protect other pages
      b.addEventListener('click', (e) => {
        console.log(e);
        e.preventDefault();
        swal({
          title: 'Are you sure?',
          text: "You won't be able to revert this!",
          type: 'warning',
          showCancelButton: true,
          confirmButtonColor: '#3085d6',
          cancelButtonColor: '#d33',
          confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
          if (result.value) {
            document.getElementById(`delete-link-${b.dataset.id}`).click();
            swal(
              'Deleted!',
              'Your file has been deleted.',
              'success'
            )
          }
        });
      });
    }
  });
}

        
export { bindSweetAlertButtonDelete };

