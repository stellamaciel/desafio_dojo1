Dado("que esteja na home do site Oragehrm") do
  visit"http://opensource.demo.orangehrmlive.com/"
end

Dado("realizar o login como administrador") do
  fill_in('txtUsername', :with => 'admin')
  fill_in('txtPassword', :with => 'admin') 
  click_button('btnLogin')
  click_link('menu_pim_viewPimModule')
  click_link('menu_pim_viewEmployeeList')
  click_link('menu_pim_viewEmployeeList')
end

Quando("editar um funcionario cadastrado") do
  click_link('Maciel')
  click_button('Edit')
  fill_in('personal_txtEmpLastName', :with => 'Silva')
  
end

Entao("os dados serao alterados") do
  click_button('Save')
end