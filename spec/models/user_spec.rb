require 'spec_helper'

describe User do
  before { @user = User.new(name: "ex", email: "user@ex") }
  subject { @user }
  
  it { should respond_to(:name)}
  it { should respond_to(:email)}
  
end
