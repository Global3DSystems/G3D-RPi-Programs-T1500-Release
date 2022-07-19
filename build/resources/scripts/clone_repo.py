import os
import shutil
import tempfile
import requests

''' this script will clone a repository and it will delete the old one and will replace with the more updated one. '''

def cloneRepo(repo_url, login_object):

 
  # directory the cloned repo will be stored
  path_append = r"/home/eri/Desktop" # Can set this as an arg 
  os.chdir(path_append)

  # change the @github url of the repo you want to clone
  repo_moddedURL = 'https://' + login_object['username'] + ':' + login_object['password'] + '@github.com/Iri021/responsive-task-app.git'
  os.system('git clone '+ repo_moddedURL)
  
  # to check wether the clone is successful or not

  try:
  	r = requests.get(repo_moddedURL, timeout=3)
  	r.raise_for_status()
  	print('Success! All files are updated.')

  except requests.exceptions.ConnectionError as errc:
    print ("Error cloning the repository, Check your Network Connection  :",errc)
 
# directory name of the repository folder
dir_name = "/home/eri/Desktop/responsive-task-app"

if (os.path.exists(dir_name)):

    # `tempfile.mktemp` Returns an absolute pathname of a file that 
    # did not exist at the time the call is made. We pass
    # dir=os.path.dirname(dir_name) here to ensure we will move
    # to the same filesystem. Otherwise, shutil.copy2 will be used
    # internally and the problem remains.
    tmp = tempfile.mktemp(dir=os.path.dirname(dir_name))
    # Rename the dir.
    shutil.move(dir_name, tmp)
    # And delete it.
    shutil.rmtree(tmp)


# At this point, even if tmp is still being deleted,
# there is no name collision.
os.makedirs(dir_name)


if __name__ == '__main__':
    cloneRepo('https://github.com/Iri021/responsive-task-app.git', {'username': 'userName', 'password': 'passWord'})