module FormHelper
  def setup_user(user)
    p '==============================='
    # p user
    p '==============================='
    user.address ||= Address.new
    user
  end
end
