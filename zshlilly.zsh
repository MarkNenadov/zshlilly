# zshlilly - A Bash scripting function library
#
# by Mark Nenadov
# marknenadov@gmail.com
#
# LICENSING
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version
# This program is distributed in the hope that it will be useful
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>. 

ZSHLILLY_DIR=$(cd "$(dirname "$0")" && pwd)

source "${ZSHLILLY_DIR}/src/base.zsh"
source "${ZSHLILLY_DIR}/src/loop.zsh"
source "${ZSHLILLY_DIR}/src/exec.zsh"
source "${ZSHLILLY_DIR}/src/dirs.zsh"
source "${ZSHLILLY_DIR}/src/files.zsh"
source "${ZSHLILLY_DIR}/src/process.zsh"
source "${ZSHLILLY_DIR}/src/init.zsh"
