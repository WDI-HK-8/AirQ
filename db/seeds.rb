
companies  = [
  {name: 'HSBC', industry: 'Financials'},
  {name: 'Standchart', industry: 'Financials'},
  {name: 'GA', industry: 'Education'},
  {name: 'ANZ', industry: 'Financials'},
  {name: 'nic', industry: 'Nothing'},
];


companies.each {|company|
  company = BizUser.create(
    company_name:           company[:name], 
    industry_name:          company[:industry], 
    address:                "#{company[:name]}Central", 
    email:                  "#{company[:name]}@#{company[:name]}.com", 
    phone_number:           "#{company[:name]}123", 
    password:               "#{company[:name]}password", 
    password_confirmation:  "#{company[:name]}password"
  );
}

users  = [
  {first_name: 'Jon', last_name: 'fu'},
  {first_name: 'nick', last_name: 'tse'},
  {first_name: 'joe', last_name: 'wong'},
  {first_name: 'teressa', last_name: 'ko'},
  {first_name: 'fer', last_name: 'chen'},
  {first_name: 'martin', last_name: 'chen'},
  {first_name: 'quinton', last_name: 'chen'},
  {first_name: 'harry', last_name: 'shing'},
  {first_name: 'Nicko', last_name: 'cage'},
  {first_name: 'Arnold', last_name: 'chen'},
  {first_name: 'Walter', last_name: 'Ng'},
  {first_name: 'Tricia', last_name: 'chen'},
  {first_name: 'Ella', last_name: 'wong'}

];

users.each {|user|
  user = User.create(
    first_name:             user[:first_name], 
    last_name:              user[:last_name],  
    email:                  "#{user[:first_name]}@#{user[:last_name]}.com", 
    phone_number:           "#{user[:last_name]}123", 
    password:               "#{user[:last_name]}password", 
    password_confirmation:  "#{user[:last_name]}password"
  );
}

sevices  = [
  {service_name: 'Consumer banking', biz_user_id: 1 },
  {service_name: 'CDO investment', biz_user_id: 1 },
  {service_name: 'WDI', biz_user_id: 3 },
  {service_name: 'Cash Deposit', biz_user_id: 2 },
  {service_name: 'harry', biz_user_id: 4 },
  {service_name: 'Private banking', biz_user_id: 1 },
  {service_name: 'Investment services', biz_user_id: 1 },
  {service_name: 'Foreign Exchange (high value)', biz_user_id: 1 },
  {service_name: 'Foreign Exchange (low value)', biz_user_id: 1 },
  {service_name: 'PWM UHNW', biz_user_id: 1 },
  {service_name: 'High yield loans', biz_user_id: 1 },
  {service_name: 'Cheque Deposit', biz_user_id: 1 },
];

sevices.each {|service|
  service = Service.create(
    service_name:           service[:service_name], 
    biz_user_id:            service[:biz_user_id],
    service_address:        "#{service[:service_name]}central", 
    service_phone_num:      "#{service[:service_name]}123", 
  );
}

sessions  = [
  {
    user_id: 1,
    service_id: 2,
    is_completed: false
  },
  {
    user_id: 2,
    service_id: 1,
    is_completed: false
  },
  {
    user_id: 3,
    service_id: 3,    
    is_completed: false    
  },
  {
    user_id: 4,
    service_id: 2,
    is_completed: false
  },
  {
    user_id: 5,
    service_id: 4,
    is_completed: true
  },
  {
    user_id: 6,
    service_id: 12,
    is_completed: true
  },
  {
    user_id: 7,
    service_id: 11,
    is_completed: true
  },
  {
    user_id: 8,
    service_id: 10,
    is_completed: true
  },
  {
    user_id: 1,
    service_id: 9,
    is_completed: true
  },
  {
    user_id: 10,
    service_id: 8,
    is_completed: true
  },
  {
    user_id: 11,
    service_id: 9,
    is_completed: true
  },
  {
    user_id: 12,
    service_id: 10,
    is_completed: true
  },
  {
    user_id: 12,
    service_id: 7,
    is_completed: false
  },
  {
    user_id: 11,
    service_id: 7,
    is_completed: false
  },
  {
    user_id: 8,
    service_id: 2,
    is_completed: false
  },
  {
    user_id: 5,
    service_id: 9,
    is_completed: false
  },
  {
    user_id: 8,
    service_id: 10,
    is_completed: false
  },
  {
    user_id: 10,
    service_id: 2,
    is_completed: false
  },
  {
    user_id: 11,
    service_id: 12,
    is_completed: false
  },
  {
    user_id: 10,
    service_id: 4,
    is_completed: false
  },
];  


sessions.each {|session|
  session = Session.create(
    user_id:            session[:user_id], 
    service_id:         session[:service_id],
    is_completed:      session[:is_completed], 
  );
}

