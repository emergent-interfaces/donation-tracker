class ProfileType < ClassyEnum::Base
end

class ProfileType::Individual < ProfileType
end

class ProfileType::Family < ProfileType
end

class ProfileType::Organization < ProfileType
end
