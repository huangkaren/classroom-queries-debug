Rails.application.routes.draw do
  get("/", { :controller => "departments", :action => "index" })

  #------------------------------
  # Department routes

  get("/departments", { :controller => "departments", :action => "index" })
  
  get("/departments/:path_id", { :controller => "departments", :action => "show" })

  post("/insert_department", { :controller => "departments", :action => "create" })

  # get("/departments", { :controller => "departments", :action => "index" })
  
  post("/modify_department/:the_id", { :controller => "departments", :action => "update" })

  get("/delete_department/:an_id", { :controller => "departments", :action => "destroy" })

  #------------------------------
  # Course routes

  get("/courses", { :controller => "courses", :action => "index" })
  
  get("/courses/:path_id", { :controller => "courses", :action => "show" })

  post("/insert_course", { :controller => "courses", :action => "create" })

  # get("/courses", { :controller => "courses_controller", :action => "index" })
  
  post("/modify_course/:the_id", { :controller => "courses", :action => "update" })

  get("/delete_course/:an_id", { :controller => "courses", :action => "destroy" })

  #------------------------------
  # Student routes

  get("/students", { :controller => "students", :action => "index" })
  
  get("/students/:path_id", { :controller => "students", :action => "show" })

  post("/insert_student", { :controller => "students", :action => "create" })

  # get("/students", { :controller => "students", :action => "index" })
  
  post("/modify_student/:the_id", { :controller => "students", :action => "update" })

  get("/delete_student/:an_id", { :controller => "students", :action => "destroy" })

  #------------------------------

  post("/insert_enrollment", { :controller => "enrollment", :action => "create" })

end
