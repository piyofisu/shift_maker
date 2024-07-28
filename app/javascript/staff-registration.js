// "click" イベントリスナーを設定する関数
function addClickListener() {
  var btn = document.getElementById("add-button");

  // 既存のイベントハンドラを削除
  btn.removeEventListener("click", form);

  // 再度イベントハンドラを設定
  btn.addEventListener("click", form);
}

function form () {
  const staffFormWrapper = document.createElement("div");
  const formFieldsWrapper = document.createElement("div"); // 新たな<div>を作成
  const staffFormName = document.createElement("div");
  const staffFormSex = document.createElement("div");
  const elementIndex = document.querySelectorAll(".form-fields-wrapper").length; // 各formFieldsWrapperの数をカウント

  formFieldsWrapper.className = "form-fields-wrapper"; // 新たな<div>にclassを付与

  staffFormName.className = "staff-form-name";
  staffFormName.innerHTML = `
    <div class="name-form">
        <textarea name="staffs[${elementIndex}][name]" placeholder="スタッフ名"></textarea>
    </div>
  `;

  staffFormSex.className = "staff-form-sex";
  staffFormSex.innerHTML = `
    <div class="sex-form">
        <select name="staffs[${elementIndex}][sex_id]">
            <option value="1">男性</option>
            <option value="2">女性</option>
        </select>
    </div>
  `;

  // 削除ボタンを作成
  const removeButton = document.createElement("button");
  removeButton.textContent = "削除";
  removeButton.addEventListener("click", function () {
    staffFormWrapper.remove();
  });

  // formFieldsWrapperに各要素を追加
  formFieldsWrapper.appendChild(staffFormName);
  formFieldsWrapper.appendChild(staffFormSex);

  // staffFormWrapperにformFieldsWrapperと削除ボタンを追加
  staffFormWrapper.appendChild(formFieldsWrapper);
  staffFormWrapper.appendChild(removeButton);

  // 新たなfieldをフォームの最後に追加
  document.querySelector(".staff-registration-form").appendChild(staffFormWrapper);
};

window.addEventListener("turbo:load", addClickListener);
window.addEventListener("turbo:render", addClickListener);