document.getElementById('add-button').addEventListener('click', function () {
  var staffFormWrapper = document.createElement('div');
  var formFieldsWrapper = document.createElement('div'); // 新たな<div>を作成
  var staffFormName = document.createElement('div');
  var staffFormSex = document.createElement('div');
  const elementIndex = document.querySelectorAll('.form-fields-wrapper').length; // 各formFieldsWrapperの数をカウント

  formFieldsWrapper.className = 'form-fields-wrapper'; // 新たな<div>にclassを付与

  staffFormName.className = 'staff-form-name';
  staffFormName.innerHTML = `
    <div class="name-form">
        <textarea name="staffs[${elementIndex}][name]" placeholder="スタッフ名"></textarea>
    </div>
  `;

  staffFormSex.className = 'staff-form-sex';
  staffFormSex.innerHTML = `
    <div class="sex-form">
        <select name="staffs[${elementIndex}][sex_id]">
            <option value="1">男性</option>
            <option value="2">女性</option>
        </select>
    </div>
  `;

  // 削除ボタンを作成
  var removeButton = document.createElement('button');
  removeButton.textContent = '削除';
  removeButton.addEventListener('click', function () {
    staffFormWrapper.remove();
  });

  // formFieldsWrapperに各要素を追加
  formFieldsWrapper.appendChild(staffFormName);
  formFieldsWrapper.appendChild(staffFormSex);

  // staffFormWrapperにformFieldsWrapperと削除ボタンを追加
  staffFormWrapper.appendChild(formFieldsWrapper);
  staffFormWrapper.appendChild(removeButton);

  // 新たなfieldをフォームの最後に追加
  document.querySelector('.staff-registration-form').appendChild(staffFormWrapper);
});