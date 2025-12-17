 addTaskForm = document.querySelector("#ADD");
 newTaskInput = document.querySelector("#NEW");
 tasksList = document.querySelector("#tasks");

addTaskForm.addEventListener("submit", function(event) {
  event.preventDefault();
   newTaskValue = newTaskInput.value;
   newTaskItem = document.createElement("li");
  newTaskItem.textContent = newTaskValue;
  tasksList.appendChild(newTaskItem);
  newTaskInput.value = "";
});
