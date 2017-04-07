#!/bin/sh
#
#    This file is part of alpine.
#
#    alpine is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    alpine is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with alpine.  If not, see <http://www.gnu.org/licenses/>.

apk update &&
    apk upgrade &&
    adduser -D user &&
    apk add sudo &&
    mkdir /home/user/.ssh &&
    chmod 0700 /home/user/.ssh &&
    rm /var/cache/apk/*