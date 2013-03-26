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


Puppet::Type.type(:tuned).provide(:tunedadm) do
    desc "Tuned provider."

    commands :tuned_adm => "/usr/sbin/tuned-adm"

    def create
        Puppet.info("Tuned: Switching to profile '#{@resource[:name]}'")
        system("tuned-adm profile #{@resource[:name]}")
    end

    def destroy
        Puppet.debug("Tuned: destroy called - nothing to do...")
    end

    def exists?
        Puppet.debug("Tuned: Check if profile #{@resource[:name]} is activated.")
        status = system("tuned-adm active | grep -c #{@resource[:name]} > /dev/null ")
        Puppet.debug("Tuned: status is #{status}")
        status
    end
end
