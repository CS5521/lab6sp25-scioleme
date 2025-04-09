#include "types.h"
#include "stat.h"
#include "user.h"

int 
main(int argc, char * argv[])
{
  int start_forks = fkc(1);
  printf(1, "number of forks when program starts: %d\n", start_forks);

  if (fork() == 0)
  {
    exit();
  }

  if (fork() == 0)
  {
    exit();
  }
  
  int two_forks = fkc(1);
  printf(1, "number of forks after two more forks: %d\n", two_forks);

  fkc(0);

  int forks_after_clear = fkc(1);
  printf(1, "number of forks after fork count cleared: %d\n", forks_after_clear);

  if (fork() == 0)
  {
    exit();
  }

  if (fork() == 0)
  {
      exit();
  }
  
  if (fork() == 0)
  {
    exit();
  }
  
  int three_forks = fkc(1);
  printf(1, "number of forks after three more forks: %d\n", three_forks);
  
  wait();
  wait();
  wait();
  wait();
  wait();
  
  exit();
}
