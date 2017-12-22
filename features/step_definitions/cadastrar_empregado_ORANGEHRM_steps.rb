Dado("que esteja na home do site") do                                            
 visit"http://opensource.demo.orangehrmlive.com/"    
end                                                                              
                                                                                 
Dado("realizar o login") do                                                      
  fill_in('txtUsername', :with => 'admin')
  fill_in('txtPassword', :with => 'admin') 
  click_button('btnLogin')   
end                                                                              
                                                                                 
Quando("cadastrar um novo empregado") do                                         
  click_link('menu_pim_viewPimModule')
  click_link('menu_pim_addEmployee')    
  fill_in('firstName', :with => 'Stella')
  fill_in('middleName', :with => 'Palombo')
  fill_in('lastName', :with => 'Maciel')
  fill_in('employeeId', :with => '0044')

end                                                                              
                                                                                 
Entao("o empregado sera cadastrado com sucesso") do                              
  check('chkLogin')
  fill_in('user_name', :with => 'smaciel')
  fill_in('user_password', :with => 'batata')
  fill_in('re_password', :with => 'batata') 
  select('Enabled', :from => 'status')
  click_button('Save')    
end                            