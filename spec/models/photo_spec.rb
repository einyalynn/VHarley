require 'spec_helper'
require 'rspec'

describe Photo do
  before {@photo= Photo.new(title:"alt text",
                            description:"longer descriptive text",
                            url:"www.google.com",
                            visible: true,
                            sequence: 1)   }
  subject {@photo}

  it {should respond_to(:title)      }
  it {should respond_to(:description)}
  it {should respond_to(:url)        }
  it {should respond_to(:visible)    }
  it {should respond_to(:sequence)   }
end
