class PhotoPolicy
  attr_reader :user, :photo

  def initialize(user, photo)
    @user = user
    @photo = photo
  end

  def update?
    return true if @photo.user.blank?
    return true if @photo.user == user
    return false if user.blank?
    return true if user.level == 9
    return false if @photo.user && @photo.user.admin? && (@photo.user!=user)
    user.admin?
  end

  def destroy?
    return true if @photo.user.blank?
    return true if @photo.user == user
    return false if user.blank?
    return true if user.level == 9
    return false if @photo.user && @photo.user.admin? && (@photo.user!=user)
    user.admin?
  end
end