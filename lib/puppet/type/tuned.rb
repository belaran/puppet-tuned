#Copyright 2012 Romain Pelisse - <belaran@gmail.com>
#
#This file is part of Puppet extension module called 'local-dns'.
#
#The Puppet extension module called 'local-dns'. is free software: you can redistribute
#it and/or modify it under the terms of the GNU General Public License as published by the
#Free Software Foundation, either version 3 of the License, or (at your option) any later
#version.
#
#The Puppet extension module called 'local-dns' is distributed in the hope that it will be
#useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
#FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
#
#You should have received a copy of the GNU General Public License along with the Puppet
#extension module called 'local-dns'. If not, see http://www.gnu.org/licenses/.


Puppet::Type.newtype(:tuned) do
  @doc = "Ensure that target has the appropriate tuned profile activated."

  ensurable

  newparam(:name) do
    desc "tuned profile to activate"
    isnamevar
  end

end
