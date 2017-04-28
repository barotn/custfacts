Facter.add(:role) do
  setcode do
    custrole = Facter.value('hostname').to_s
    custrolearray = custrole.split("-")
    role = custrolearray[2]
    if role == 'db'
      'db'
    elsif role == 'web'
      'web'
    elsif role == 'app'
      'app'
    else
      'nil'
    end
  end
end

