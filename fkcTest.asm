
_fkcTest:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "stat.h"
#include "user.h"

int 
main(int argc, char * argv[])
{
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 e4 f0             	and    $0xfffffff0,%esp
   6:	83 ec 20             	sub    $0x20,%esp
  int start_forks = fkc(1);
   9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  10:	e8 24 04 00 00       	call   439 <fkc>
  15:	89 44 24 1c          	mov    %eax,0x1c(%esp)
  printf(1, "number of forks when program starts: %d\n", start_forks);
  19:	8b 44 24 1c          	mov    0x1c(%esp),%eax
  1d:	89 44 24 08          	mov    %eax,0x8(%esp)
  21:	c7 44 24 04 f0 08 00 	movl   $0x8f0,0x4(%esp)
  28:	00 
  29:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  30:	e8 ec 04 00 00       	call   521 <printf>

  if (fork() == 0)
  35:	e8 4f 03 00 00       	call   389 <fork>
  3a:	85 c0                	test   %eax,%eax
  3c:	75 05                	jne    43 <main+0x43>
  {
    exit();
  3e:	e8 4e 03 00 00       	call   391 <exit>
  }

  if (fork() == 0)
  43:	e8 41 03 00 00       	call   389 <fork>
  48:	85 c0                	test   %eax,%eax
  4a:	75 05                	jne    51 <main+0x51>
  {
    exit();
  4c:	e8 40 03 00 00       	call   391 <exit>
  }
  
  int two_forks = fkc(1);
  51:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  58:	e8 dc 03 00 00       	call   439 <fkc>
  5d:	89 44 24 18          	mov    %eax,0x18(%esp)
  printf(1, "number of forks after two more forks: %d\n", two_forks);
  61:	8b 44 24 18          	mov    0x18(%esp),%eax
  65:	89 44 24 08          	mov    %eax,0x8(%esp)
  69:	c7 44 24 04 1c 09 00 	movl   $0x91c,0x4(%esp)
  70:	00 
  71:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  78:	e8 a4 04 00 00       	call   521 <printf>

  fkc(0);
  7d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  84:	e8 b0 03 00 00       	call   439 <fkc>

  int forks_after_clear = fkc(1);
  89:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  90:	e8 a4 03 00 00       	call   439 <fkc>
  95:	89 44 24 14          	mov    %eax,0x14(%esp)
  printf(1, "number of forks after fork count cleared: %d\n", forks_after_clear);
  99:	8b 44 24 14          	mov    0x14(%esp),%eax
  9d:	89 44 24 08          	mov    %eax,0x8(%esp)
  a1:	c7 44 24 04 48 09 00 	movl   $0x948,0x4(%esp)
  a8:	00 
  a9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  b0:	e8 6c 04 00 00       	call   521 <printf>

  if (fork() == 0)
  b5:	e8 cf 02 00 00       	call   389 <fork>
  ba:	85 c0                	test   %eax,%eax
  bc:	75 05                	jne    c3 <main+0xc3>
  {
    exit();
  be:	e8 ce 02 00 00       	call   391 <exit>
  }

  if (fork() == 0)
  c3:	e8 c1 02 00 00       	call   389 <fork>
  c8:	85 c0                	test   %eax,%eax
  ca:	75 05                	jne    d1 <main+0xd1>
  {
      exit();
  cc:	e8 c0 02 00 00       	call   391 <exit>
  }
  
  if (fork() == 0)
  d1:	e8 b3 02 00 00       	call   389 <fork>
  d6:	85 c0                	test   %eax,%eax
  d8:	75 05                	jne    df <main+0xdf>
  {
    exit();
  da:	e8 b2 02 00 00       	call   391 <exit>
  }
  
  int three_forks = fkc(1);
  df:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  e6:	e8 4e 03 00 00       	call   439 <fkc>
  eb:	89 44 24 10          	mov    %eax,0x10(%esp)
  printf(1, "number of forks after three more forks: %d\n", three_forks);
  ef:	8b 44 24 10          	mov    0x10(%esp),%eax
  f3:	89 44 24 08          	mov    %eax,0x8(%esp)
  f7:	c7 44 24 04 78 09 00 	movl   $0x978,0x4(%esp)
  fe:	00 
  ff:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 106:	e8 16 04 00 00       	call   521 <printf>
  
  wait();
 10b:	e8 89 02 00 00       	call   399 <wait>
  wait();
 110:	e8 84 02 00 00       	call   399 <wait>
  wait();
 115:	e8 7f 02 00 00       	call   399 <wait>
  wait();
 11a:	e8 7a 02 00 00       	call   399 <wait>
  wait();
 11f:	e8 75 02 00 00       	call   399 <wait>
  
  exit();
 124:	e8 68 02 00 00       	call   391 <exit>

00000129 <stosb>:
               "cc");
}

static inline void
stosb(void *addr, int data, int cnt)
{
 129:	55                   	push   %ebp
 12a:	89 e5                	mov    %esp,%ebp
 12c:	57                   	push   %edi
 12d:	53                   	push   %ebx
  asm volatile("cld; rep stosb" :
 12e:	8b 4d 08             	mov    0x8(%ebp),%ecx
 131:	8b 55 10             	mov    0x10(%ebp),%edx
 134:	8b 45 0c             	mov    0xc(%ebp),%eax
 137:	89 cb                	mov    %ecx,%ebx
 139:	89 df                	mov    %ebx,%edi
 13b:	89 d1                	mov    %edx,%ecx
 13d:	fc                   	cld    
 13e:	f3 aa                	rep stos %al,%es:(%edi)
 140:	89 ca                	mov    %ecx,%edx
 142:	89 fb                	mov    %edi,%ebx
 144:	89 5d 08             	mov    %ebx,0x8(%ebp)
 147:	89 55 10             	mov    %edx,0x10(%ebp)
               "=D" (addr), "=c" (cnt) :
               "0" (addr), "1" (cnt), "a" (data) :
               "memory", "cc");
}
 14a:	5b                   	pop    %ebx
 14b:	5f                   	pop    %edi
 14c:	5d                   	pop    %ebp
 14d:	c3                   	ret    

0000014e <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 14e:	55                   	push   %ebp
 14f:	89 e5                	mov    %esp,%ebp
 151:	83 ec 10             	sub    $0x10,%esp
  char *os;

  os = s;
 154:	8b 45 08             	mov    0x8(%ebp),%eax
 157:	89 45 fc             	mov    %eax,-0x4(%ebp)
  while((*s++ = *t++) != 0)
 15a:	90                   	nop
 15b:	8b 45 08             	mov    0x8(%ebp),%eax
 15e:	8d 50 01             	lea    0x1(%eax),%edx
 161:	89 55 08             	mov    %edx,0x8(%ebp)
 164:	8b 55 0c             	mov    0xc(%ebp),%edx
 167:	8d 4a 01             	lea    0x1(%edx),%ecx
 16a:	89 4d 0c             	mov    %ecx,0xc(%ebp)
 16d:	0f b6 12             	movzbl (%edx),%edx
 170:	88 10                	mov    %dl,(%eax)
 172:	0f b6 00             	movzbl (%eax),%eax
 175:	84 c0                	test   %al,%al
 177:	75 e2                	jne    15b <strcpy+0xd>
    ;
  return os;
 179:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
 17c:	c9                   	leave  
 17d:	c3                   	ret    

0000017e <strcmp>:

int
strcmp(const char *p, const char *q)
{
 17e:	55                   	push   %ebp
 17f:	89 e5                	mov    %esp,%ebp
  while(*p && *p == *q)
 181:	eb 08                	jmp    18b <strcmp+0xd>
    p++, q++;
 183:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 187:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
  while(*p && *p == *q)
 18b:	8b 45 08             	mov    0x8(%ebp),%eax
 18e:	0f b6 00             	movzbl (%eax),%eax
 191:	84 c0                	test   %al,%al
 193:	74 10                	je     1a5 <strcmp+0x27>
 195:	8b 45 08             	mov    0x8(%ebp),%eax
 198:	0f b6 10             	movzbl (%eax),%edx
 19b:	8b 45 0c             	mov    0xc(%ebp),%eax
 19e:	0f b6 00             	movzbl (%eax),%eax
 1a1:	38 c2                	cmp    %al,%dl
 1a3:	74 de                	je     183 <strcmp+0x5>
  return (uchar)*p - (uchar)*q;
 1a5:	8b 45 08             	mov    0x8(%ebp),%eax
 1a8:	0f b6 00             	movzbl (%eax),%eax
 1ab:	0f b6 d0             	movzbl %al,%edx
 1ae:	8b 45 0c             	mov    0xc(%ebp),%eax
 1b1:	0f b6 00             	movzbl (%eax),%eax
 1b4:	0f b6 c0             	movzbl %al,%eax
 1b7:	29 c2                	sub    %eax,%edx
 1b9:	89 d0                	mov    %edx,%eax
}
 1bb:	5d                   	pop    %ebp
 1bc:	c3                   	ret    

000001bd <strlen>:

uint
strlen(const char *s)
{
 1bd:	55                   	push   %ebp
 1be:	89 e5                	mov    %esp,%ebp
 1c0:	83 ec 10             	sub    $0x10,%esp
  int n;

  for(n = 0; s[n]; n++)
 1c3:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 1ca:	eb 04                	jmp    1d0 <strlen+0x13>
 1cc:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 1d0:	8b 55 fc             	mov    -0x4(%ebp),%edx
 1d3:	8b 45 08             	mov    0x8(%ebp),%eax
 1d6:	01 d0                	add    %edx,%eax
 1d8:	0f b6 00             	movzbl (%eax),%eax
 1db:	84 c0                	test   %al,%al
 1dd:	75 ed                	jne    1cc <strlen+0xf>
    ;
  return n;
 1df:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
 1e2:	c9                   	leave  
 1e3:	c3                   	ret    

000001e4 <memset>:

void*
memset(void *dst, int c, uint n)
{
 1e4:	55                   	push   %ebp
 1e5:	89 e5                	mov    %esp,%ebp
 1e7:	83 ec 0c             	sub    $0xc,%esp
  stosb(dst, c, n);
 1ea:	8b 45 10             	mov    0x10(%ebp),%eax
 1ed:	89 44 24 08          	mov    %eax,0x8(%esp)
 1f1:	8b 45 0c             	mov    0xc(%ebp),%eax
 1f4:	89 44 24 04          	mov    %eax,0x4(%esp)
 1f8:	8b 45 08             	mov    0x8(%ebp),%eax
 1fb:	89 04 24             	mov    %eax,(%esp)
 1fe:	e8 26 ff ff ff       	call   129 <stosb>
  return dst;
 203:	8b 45 08             	mov    0x8(%ebp),%eax
}
 206:	c9                   	leave  
 207:	c3                   	ret    

00000208 <strchr>:

char*
strchr(const char *s, char c)
{
 208:	55                   	push   %ebp
 209:	89 e5                	mov    %esp,%ebp
 20b:	83 ec 04             	sub    $0x4,%esp
 20e:	8b 45 0c             	mov    0xc(%ebp),%eax
 211:	88 45 fc             	mov    %al,-0x4(%ebp)
  for(; *s; s++)
 214:	eb 14                	jmp    22a <strchr+0x22>
    if(*s == c)
 216:	8b 45 08             	mov    0x8(%ebp),%eax
 219:	0f b6 00             	movzbl (%eax),%eax
 21c:	3a 45 fc             	cmp    -0x4(%ebp),%al
 21f:	75 05                	jne    226 <strchr+0x1e>
      return (char*)s;
 221:	8b 45 08             	mov    0x8(%ebp),%eax
 224:	eb 13                	jmp    239 <strchr+0x31>
  for(; *s; s++)
 226:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 22a:	8b 45 08             	mov    0x8(%ebp),%eax
 22d:	0f b6 00             	movzbl (%eax),%eax
 230:	84 c0                	test   %al,%al
 232:	75 e2                	jne    216 <strchr+0xe>
  return 0;
 234:	b8 00 00 00 00       	mov    $0x0,%eax
}
 239:	c9                   	leave  
 23a:	c3                   	ret    

0000023b <gets>:

char*
gets(char *buf, int max)
{
 23b:	55                   	push   %ebp
 23c:	89 e5                	mov    %esp,%ebp
 23e:	83 ec 28             	sub    $0x28,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 241:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 248:	eb 4c                	jmp    296 <gets+0x5b>
    cc = read(0, &c, 1);
 24a:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 251:	00 
 252:	8d 45 ef             	lea    -0x11(%ebp),%eax
 255:	89 44 24 04          	mov    %eax,0x4(%esp)
 259:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 260:	e8 44 01 00 00       	call   3a9 <read>
 265:	89 45 f0             	mov    %eax,-0x10(%ebp)
    if(cc < 1)
 268:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 26c:	7f 02                	jg     270 <gets+0x35>
      break;
 26e:	eb 31                	jmp    2a1 <gets+0x66>
    buf[i++] = c;
 270:	8b 45 f4             	mov    -0xc(%ebp),%eax
 273:	8d 50 01             	lea    0x1(%eax),%edx
 276:	89 55 f4             	mov    %edx,-0xc(%ebp)
 279:	89 c2                	mov    %eax,%edx
 27b:	8b 45 08             	mov    0x8(%ebp),%eax
 27e:	01 c2                	add    %eax,%edx
 280:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
 284:	88 02                	mov    %al,(%edx)
    if(c == '\n' || c == '\r')
 286:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
 28a:	3c 0a                	cmp    $0xa,%al
 28c:	74 13                	je     2a1 <gets+0x66>
 28e:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
 292:	3c 0d                	cmp    $0xd,%al
 294:	74 0b                	je     2a1 <gets+0x66>
  for(i=0; i+1 < max; ){
 296:	8b 45 f4             	mov    -0xc(%ebp),%eax
 299:	83 c0 01             	add    $0x1,%eax
 29c:	3b 45 0c             	cmp    0xc(%ebp),%eax
 29f:	7c a9                	jl     24a <gets+0xf>
      break;
  }
  buf[i] = '\0';
 2a1:	8b 55 f4             	mov    -0xc(%ebp),%edx
 2a4:	8b 45 08             	mov    0x8(%ebp),%eax
 2a7:	01 d0                	add    %edx,%eax
 2a9:	c6 00 00             	movb   $0x0,(%eax)
  return buf;
 2ac:	8b 45 08             	mov    0x8(%ebp),%eax
}
 2af:	c9                   	leave  
 2b0:	c3                   	ret    

000002b1 <stat>:

int
stat(const char *n, struct stat *st)
{
 2b1:	55                   	push   %ebp
 2b2:	89 e5                	mov    %esp,%ebp
 2b4:	83 ec 28             	sub    $0x28,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 2b7:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 2be:	00 
 2bf:	8b 45 08             	mov    0x8(%ebp),%eax
 2c2:	89 04 24             	mov    %eax,(%esp)
 2c5:	e8 07 01 00 00       	call   3d1 <open>
 2ca:	89 45 f4             	mov    %eax,-0xc(%ebp)
  if(fd < 0)
 2cd:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 2d1:	79 07                	jns    2da <stat+0x29>
    return -1;
 2d3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 2d8:	eb 23                	jmp    2fd <stat+0x4c>
  r = fstat(fd, st);
 2da:	8b 45 0c             	mov    0xc(%ebp),%eax
 2dd:	89 44 24 04          	mov    %eax,0x4(%esp)
 2e1:	8b 45 f4             	mov    -0xc(%ebp),%eax
 2e4:	89 04 24             	mov    %eax,(%esp)
 2e7:	e8 fd 00 00 00       	call   3e9 <fstat>
 2ec:	89 45 f0             	mov    %eax,-0x10(%ebp)
  close(fd);
 2ef:	8b 45 f4             	mov    -0xc(%ebp),%eax
 2f2:	89 04 24             	mov    %eax,(%esp)
 2f5:	e8 bf 00 00 00       	call   3b9 <close>
  return r;
 2fa:	8b 45 f0             	mov    -0x10(%ebp),%eax
}
 2fd:	c9                   	leave  
 2fe:	c3                   	ret    

000002ff <atoi>:

int
atoi(const char *s)
{
 2ff:	55                   	push   %ebp
 300:	89 e5                	mov    %esp,%ebp
 302:	83 ec 10             	sub    $0x10,%esp
  int n;

  n = 0;
 305:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  while('0' <= *s && *s <= '9')
 30c:	eb 25                	jmp    333 <atoi+0x34>
    n = n*10 + *s++ - '0';
 30e:	8b 55 fc             	mov    -0x4(%ebp),%edx
 311:	89 d0                	mov    %edx,%eax
 313:	c1 e0 02             	shl    $0x2,%eax
 316:	01 d0                	add    %edx,%eax
 318:	01 c0                	add    %eax,%eax
 31a:	89 c1                	mov    %eax,%ecx
 31c:	8b 45 08             	mov    0x8(%ebp),%eax
 31f:	8d 50 01             	lea    0x1(%eax),%edx
 322:	89 55 08             	mov    %edx,0x8(%ebp)
 325:	0f b6 00             	movzbl (%eax),%eax
 328:	0f be c0             	movsbl %al,%eax
 32b:	01 c8                	add    %ecx,%eax
 32d:	83 e8 30             	sub    $0x30,%eax
 330:	89 45 fc             	mov    %eax,-0x4(%ebp)
  while('0' <= *s && *s <= '9')
 333:	8b 45 08             	mov    0x8(%ebp),%eax
 336:	0f b6 00             	movzbl (%eax),%eax
 339:	3c 2f                	cmp    $0x2f,%al
 33b:	7e 0a                	jle    347 <atoi+0x48>
 33d:	8b 45 08             	mov    0x8(%ebp),%eax
 340:	0f b6 00             	movzbl (%eax),%eax
 343:	3c 39                	cmp    $0x39,%al
 345:	7e c7                	jle    30e <atoi+0xf>
  return n;
 347:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
 34a:	c9                   	leave  
 34b:	c3                   	ret    

0000034c <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 34c:	55                   	push   %ebp
 34d:	89 e5                	mov    %esp,%ebp
 34f:	83 ec 10             	sub    $0x10,%esp
  char *dst;
  const char *src;

  dst = vdst;
 352:	8b 45 08             	mov    0x8(%ebp),%eax
 355:	89 45 fc             	mov    %eax,-0x4(%ebp)
  src = vsrc;
 358:	8b 45 0c             	mov    0xc(%ebp),%eax
 35b:	89 45 f8             	mov    %eax,-0x8(%ebp)
  while(n-- > 0)
 35e:	eb 17                	jmp    377 <memmove+0x2b>
    *dst++ = *src++;
 360:	8b 45 fc             	mov    -0x4(%ebp),%eax
 363:	8d 50 01             	lea    0x1(%eax),%edx
 366:	89 55 fc             	mov    %edx,-0x4(%ebp)
 369:	8b 55 f8             	mov    -0x8(%ebp),%edx
 36c:	8d 4a 01             	lea    0x1(%edx),%ecx
 36f:	89 4d f8             	mov    %ecx,-0x8(%ebp)
 372:	0f b6 12             	movzbl (%edx),%edx
 375:	88 10                	mov    %dl,(%eax)
  while(n-- > 0)
 377:	8b 45 10             	mov    0x10(%ebp),%eax
 37a:	8d 50 ff             	lea    -0x1(%eax),%edx
 37d:	89 55 10             	mov    %edx,0x10(%ebp)
 380:	85 c0                	test   %eax,%eax
 382:	7f dc                	jg     360 <memmove+0x14>
  return vdst;
 384:	8b 45 08             	mov    0x8(%ebp),%eax
}
 387:	c9                   	leave  
 388:	c3                   	ret    

00000389 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 389:	b8 01 00 00 00       	mov    $0x1,%eax
 38e:	cd 40                	int    $0x40
 390:	c3                   	ret    

00000391 <exit>:
SYSCALL(exit)
 391:	b8 02 00 00 00       	mov    $0x2,%eax
 396:	cd 40                	int    $0x40
 398:	c3                   	ret    

00000399 <wait>:
SYSCALL(wait)
 399:	b8 03 00 00 00       	mov    $0x3,%eax
 39e:	cd 40                	int    $0x40
 3a0:	c3                   	ret    

000003a1 <pipe>:
SYSCALL(pipe)
 3a1:	b8 04 00 00 00       	mov    $0x4,%eax
 3a6:	cd 40                	int    $0x40
 3a8:	c3                   	ret    

000003a9 <read>:
SYSCALL(read)
 3a9:	b8 05 00 00 00       	mov    $0x5,%eax
 3ae:	cd 40                	int    $0x40
 3b0:	c3                   	ret    

000003b1 <write>:
SYSCALL(write)
 3b1:	b8 10 00 00 00       	mov    $0x10,%eax
 3b6:	cd 40                	int    $0x40
 3b8:	c3                   	ret    

000003b9 <close>:
SYSCALL(close)
 3b9:	b8 15 00 00 00       	mov    $0x15,%eax
 3be:	cd 40                	int    $0x40
 3c0:	c3                   	ret    

000003c1 <kill>:
SYSCALL(kill)
 3c1:	b8 06 00 00 00       	mov    $0x6,%eax
 3c6:	cd 40                	int    $0x40
 3c8:	c3                   	ret    

000003c9 <exec>:
SYSCALL(exec)
 3c9:	b8 07 00 00 00       	mov    $0x7,%eax
 3ce:	cd 40                	int    $0x40
 3d0:	c3                   	ret    

000003d1 <open>:
SYSCALL(open)
 3d1:	b8 0f 00 00 00       	mov    $0xf,%eax
 3d6:	cd 40                	int    $0x40
 3d8:	c3                   	ret    

000003d9 <mknod>:
SYSCALL(mknod)
 3d9:	b8 11 00 00 00       	mov    $0x11,%eax
 3de:	cd 40                	int    $0x40
 3e0:	c3                   	ret    

000003e1 <unlink>:
SYSCALL(unlink)
 3e1:	b8 12 00 00 00       	mov    $0x12,%eax
 3e6:	cd 40                	int    $0x40
 3e8:	c3                   	ret    

000003e9 <fstat>:
SYSCALL(fstat)
 3e9:	b8 08 00 00 00       	mov    $0x8,%eax
 3ee:	cd 40                	int    $0x40
 3f0:	c3                   	ret    

000003f1 <link>:
SYSCALL(link)
 3f1:	b8 13 00 00 00       	mov    $0x13,%eax
 3f6:	cd 40                	int    $0x40
 3f8:	c3                   	ret    

000003f9 <mkdir>:
SYSCALL(mkdir)
 3f9:	b8 14 00 00 00       	mov    $0x14,%eax
 3fe:	cd 40                	int    $0x40
 400:	c3                   	ret    

00000401 <chdir>:
SYSCALL(chdir)
 401:	b8 09 00 00 00       	mov    $0x9,%eax
 406:	cd 40                	int    $0x40
 408:	c3                   	ret    

00000409 <dup>:
SYSCALL(dup)
 409:	b8 0a 00 00 00       	mov    $0xa,%eax
 40e:	cd 40                	int    $0x40
 410:	c3                   	ret    

00000411 <getpid>:
SYSCALL(getpid)
 411:	b8 0b 00 00 00       	mov    $0xb,%eax
 416:	cd 40                	int    $0x40
 418:	c3                   	ret    

00000419 <sbrk>:
SYSCALL(sbrk)
 419:	b8 0c 00 00 00       	mov    $0xc,%eax
 41e:	cd 40                	int    $0x40
 420:	c3                   	ret    

00000421 <sleep>:
SYSCALL(sleep)
 421:	b8 0d 00 00 00       	mov    $0xd,%eax
 426:	cd 40                	int    $0x40
 428:	c3                   	ret    

00000429 <uptime>:
SYSCALL(uptime)
 429:	b8 0e 00 00 00       	mov    $0xe,%eax
 42e:	cd 40                	int    $0x40
 430:	c3                   	ret    

00000431 <hw>:
SYSCALL(hw)
 431:	b8 16 00 00 00       	mov    $0x16,%eax
 436:	cd 40                	int    $0x40
 438:	c3                   	ret    

00000439 <fkc>:
SYSCALL(fkc)
 439:	b8 17 00 00 00       	mov    $0x17,%eax
 43e:	cd 40                	int    $0x40
 440:	c3                   	ret    

00000441 <putc>:
#include "stat.h"
#include "user.h"

static void
putc(int fd, char c)
{
 441:	55                   	push   %ebp
 442:	89 e5                	mov    %esp,%ebp
 444:	83 ec 18             	sub    $0x18,%esp
 447:	8b 45 0c             	mov    0xc(%ebp),%eax
 44a:	88 45 f4             	mov    %al,-0xc(%ebp)
  write(fd, &c, 1);
 44d:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 454:	00 
 455:	8d 45 f4             	lea    -0xc(%ebp),%eax
 458:	89 44 24 04          	mov    %eax,0x4(%esp)
 45c:	8b 45 08             	mov    0x8(%ebp),%eax
 45f:	89 04 24             	mov    %eax,(%esp)
 462:	e8 4a ff ff ff       	call   3b1 <write>
}
 467:	c9                   	leave  
 468:	c3                   	ret    

00000469 <printint>:

static void
printint(int fd, int xx, int base, int sgn)
{
 469:	55                   	push   %ebp
 46a:	89 e5                	mov    %esp,%ebp
 46c:	56                   	push   %esi
 46d:	53                   	push   %ebx
 46e:	83 ec 30             	sub    $0x30,%esp
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 471:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  if(sgn && xx < 0){
 478:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
 47c:	74 17                	je     495 <printint+0x2c>
 47e:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 482:	79 11                	jns    495 <printint+0x2c>
    neg = 1;
 484:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
    x = -xx;
 48b:	8b 45 0c             	mov    0xc(%ebp),%eax
 48e:	f7 d8                	neg    %eax
 490:	89 45 ec             	mov    %eax,-0x14(%ebp)
 493:	eb 06                	jmp    49b <printint+0x32>
  } else {
    x = xx;
 495:	8b 45 0c             	mov    0xc(%ebp),%eax
 498:	89 45 ec             	mov    %eax,-0x14(%ebp)
  }

  i = 0;
 49b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  do{
    buf[i++] = digits[x % base];
 4a2:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 4a5:	8d 41 01             	lea    0x1(%ecx),%eax
 4a8:	89 45 f4             	mov    %eax,-0xc(%ebp)
 4ab:	8b 5d 10             	mov    0x10(%ebp),%ebx
 4ae:	8b 45 ec             	mov    -0x14(%ebp),%eax
 4b1:	ba 00 00 00 00       	mov    $0x0,%edx
 4b6:	f7 f3                	div    %ebx
 4b8:	89 d0                	mov    %edx,%eax
 4ba:	0f b6 80 f0 0b 00 00 	movzbl 0xbf0(%eax),%eax
 4c1:	88 44 0d dc          	mov    %al,-0x24(%ebp,%ecx,1)
  }while((x /= base) != 0);
 4c5:	8b 75 10             	mov    0x10(%ebp),%esi
 4c8:	8b 45 ec             	mov    -0x14(%ebp),%eax
 4cb:	ba 00 00 00 00       	mov    $0x0,%edx
 4d0:	f7 f6                	div    %esi
 4d2:	89 45 ec             	mov    %eax,-0x14(%ebp)
 4d5:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 4d9:	75 c7                	jne    4a2 <printint+0x39>
  if(neg)
 4db:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 4df:	74 10                	je     4f1 <printint+0x88>
    buf[i++] = '-';
 4e1:	8b 45 f4             	mov    -0xc(%ebp),%eax
 4e4:	8d 50 01             	lea    0x1(%eax),%edx
 4e7:	89 55 f4             	mov    %edx,-0xc(%ebp)
 4ea:	c6 44 05 dc 2d       	movb   $0x2d,-0x24(%ebp,%eax,1)

  while(--i >= 0)
 4ef:	eb 1f                	jmp    510 <printint+0xa7>
 4f1:	eb 1d                	jmp    510 <printint+0xa7>
    putc(fd, buf[i]);
 4f3:	8d 55 dc             	lea    -0x24(%ebp),%edx
 4f6:	8b 45 f4             	mov    -0xc(%ebp),%eax
 4f9:	01 d0                	add    %edx,%eax
 4fb:	0f b6 00             	movzbl (%eax),%eax
 4fe:	0f be c0             	movsbl %al,%eax
 501:	89 44 24 04          	mov    %eax,0x4(%esp)
 505:	8b 45 08             	mov    0x8(%ebp),%eax
 508:	89 04 24             	mov    %eax,(%esp)
 50b:	e8 31 ff ff ff       	call   441 <putc>
  while(--i >= 0)
 510:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
 514:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 518:	79 d9                	jns    4f3 <printint+0x8a>
}
 51a:	83 c4 30             	add    $0x30,%esp
 51d:	5b                   	pop    %ebx
 51e:	5e                   	pop    %esi
 51f:	5d                   	pop    %ebp
 520:	c3                   	ret    

00000521 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 521:	55                   	push   %ebp
 522:	89 e5                	mov    %esp,%ebp
 524:	83 ec 38             	sub    $0x38,%esp
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 527:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  ap = (uint*)(void*)&fmt + 1;
 52e:	8d 45 0c             	lea    0xc(%ebp),%eax
 531:	83 c0 04             	add    $0x4,%eax
 534:	89 45 e8             	mov    %eax,-0x18(%ebp)
  for(i = 0; fmt[i]; i++){
 537:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 53e:	e9 7c 01 00 00       	jmp    6bf <printf+0x19e>
    c = fmt[i] & 0xff;
 543:	8b 55 0c             	mov    0xc(%ebp),%edx
 546:	8b 45 f0             	mov    -0x10(%ebp),%eax
 549:	01 d0                	add    %edx,%eax
 54b:	0f b6 00             	movzbl (%eax),%eax
 54e:	0f be c0             	movsbl %al,%eax
 551:	25 ff 00 00 00       	and    $0xff,%eax
 556:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    if(state == 0){
 559:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 55d:	75 2c                	jne    58b <printf+0x6a>
      if(c == '%'){
 55f:	83 7d e4 25          	cmpl   $0x25,-0x1c(%ebp)
 563:	75 0c                	jne    571 <printf+0x50>
        state = '%';
 565:	c7 45 ec 25 00 00 00 	movl   $0x25,-0x14(%ebp)
 56c:	e9 4a 01 00 00       	jmp    6bb <printf+0x19a>
      } else {
        putc(fd, c);
 571:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 574:	0f be c0             	movsbl %al,%eax
 577:	89 44 24 04          	mov    %eax,0x4(%esp)
 57b:	8b 45 08             	mov    0x8(%ebp),%eax
 57e:	89 04 24             	mov    %eax,(%esp)
 581:	e8 bb fe ff ff       	call   441 <putc>
 586:	e9 30 01 00 00       	jmp    6bb <printf+0x19a>
      }
    } else if(state == '%'){
 58b:	83 7d ec 25          	cmpl   $0x25,-0x14(%ebp)
 58f:	0f 85 26 01 00 00    	jne    6bb <printf+0x19a>
      if(c == 'd'){
 595:	83 7d e4 64          	cmpl   $0x64,-0x1c(%ebp)
 599:	75 2d                	jne    5c8 <printf+0xa7>
        printint(fd, *ap, 10, 1);
 59b:	8b 45 e8             	mov    -0x18(%ebp),%eax
 59e:	8b 00                	mov    (%eax),%eax
 5a0:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
 5a7:	00 
 5a8:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 5af:	00 
 5b0:	89 44 24 04          	mov    %eax,0x4(%esp)
 5b4:	8b 45 08             	mov    0x8(%ebp),%eax
 5b7:	89 04 24             	mov    %eax,(%esp)
 5ba:	e8 aa fe ff ff       	call   469 <printint>
        ap++;
 5bf:	83 45 e8 04          	addl   $0x4,-0x18(%ebp)
 5c3:	e9 ec 00 00 00       	jmp    6b4 <printf+0x193>
      } else if(c == 'x' || c == 'p'){
 5c8:	83 7d e4 78          	cmpl   $0x78,-0x1c(%ebp)
 5cc:	74 06                	je     5d4 <printf+0xb3>
 5ce:	83 7d e4 70          	cmpl   $0x70,-0x1c(%ebp)
 5d2:	75 2d                	jne    601 <printf+0xe0>
        printint(fd, *ap, 16, 0);
 5d4:	8b 45 e8             	mov    -0x18(%ebp),%eax
 5d7:	8b 00                	mov    (%eax),%eax
 5d9:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 5e0:	00 
 5e1:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 5e8:	00 
 5e9:	89 44 24 04          	mov    %eax,0x4(%esp)
 5ed:	8b 45 08             	mov    0x8(%ebp),%eax
 5f0:	89 04 24             	mov    %eax,(%esp)
 5f3:	e8 71 fe ff ff       	call   469 <printint>
        ap++;
 5f8:	83 45 e8 04          	addl   $0x4,-0x18(%ebp)
 5fc:	e9 b3 00 00 00       	jmp    6b4 <printf+0x193>
      } else if(c == 's'){
 601:	83 7d e4 73          	cmpl   $0x73,-0x1c(%ebp)
 605:	75 45                	jne    64c <printf+0x12b>
        s = (char*)*ap;
 607:	8b 45 e8             	mov    -0x18(%ebp),%eax
 60a:	8b 00                	mov    (%eax),%eax
 60c:	89 45 f4             	mov    %eax,-0xc(%ebp)
        ap++;
 60f:	83 45 e8 04          	addl   $0x4,-0x18(%ebp)
        if(s == 0)
 613:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 617:	75 09                	jne    622 <printf+0x101>
          s = "(null)";
 619:	c7 45 f4 a4 09 00 00 	movl   $0x9a4,-0xc(%ebp)
        while(*s != 0){
 620:	eb 1e                	jmp    640 <printf+0x11f>
 622:	eb 1c                	jmp    640 <printf+0x11f>
          putc(fd, *s);
 624:	8b 45 f4             	mov    -0xc(%ebp),%eax
 627:	0f b6 00             	movzbl (%eax),%eax
 62a:	0f be c0             	movsbl %al,%eax
 62d:	89 44 24 04          	mov    %eax,0x4(%esp)
 631:	8b 45 08             	mov    0x8(%ebp),%eax
 634:	89 04 24             	mov    %eax,(%esp)
 637:	e8 05 fe ff ff       	call   441 <putc>
          s++;
 63c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
        while(*s != 0){
 640:	8b 45 f4             	mov    -0xc(%ebp),%eax
 643:	0f b6 00             	movzbl (%eax),%eax
 646:	84 c0                	test   %al,%al
 648:	75 da                	jne    624 <printf+0x103>
 64a:	eb 68                	jmp    6b4 <printf+0x193>
        }
      } else if(c == 'c'){
 64c:	83 7d e4 63          	cmpl   $0x63,-0x1c(%ebp)
 650:	75 1d                	jne    66f <printf+0x14e>
        putc(fd, *ap);
 652:	8b 45 e8             	mov    -0x18(%ebp),%eax
 655:	8b 00                	mov    (%eax),%eax
 657:	0f be c0             	movsbl %al,%eax
 65a:	89 44 24 04          	mov    %eax,0x4(%esp)
 65e:	8b 45 08             	mov    0x8(%ebp),%eax
 661:	89 04 24             	mov    %eax,(%esp)
 664:	e8 d8 fd ff ff       	call   441 <putc>
        ap++;
 669:	83 45 e8 04          	addl   $0x4,-0x18(%ebp)
 66d:	eb 45                	jmp    6b4 <printf+0x193>
      } else if(c == '%'){
 66f:	83 7d e4 25          	cmpl   $0x25,-0x1c(%ebp)
 673:	75 17                	jne    68c <printf+0x16b>
        putc(fd, c);
 675:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 678:	0f be c0             	movsbl %al,%eax
 67b:	89 44 24 04          	mov    %eax,0x4(%esp)
 67f:	8b 45 08             	mov    0x8(%ebp),%eax
 682:	89 04 24             	mov    %eax,(%esp)
 685:	e8 b7 fd ff ff       	call   441 <putc>
 68a:	eb 28                	jmp    6b4 <printf+0x193>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
 68c:	c7 44 24 04 25 00 00 	movl   $0x25,0x4(%esp)
 693:	00 
 694:	8b 45 08             	mov    0x8(%ebp),%eax
 697:	89 04 24             	mov    %eax,(%esp)
 69a:	e8 a2 fd ff ff       	call   441 <putc>
        putc(fd, c);
 69f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 6a2:	0f be c0             	movsbl %al,%eax
 6a5:	89 44 24 04          	mov    %eax,0x4(%esp)
 6a9:	8b 45 08             	mov    0x8(%ebp),%eax
 6ac:	89 04 24             	mov    %eax,(%esp)
 6af:	e8 8d fd ff ff       	call   441 <putc>
      }
      state = 0;
 6b4:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  for(i = 0; fmt[i]; i++){
 6bb:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 6bf:	8b 55 0c             	mov    0xc(%ebp),%edx
 6c2:	8b 45 f0             	mov    -0x10(%ebp),%eax
 6c5:	01 d0                	add    %edx,%eax
 6c7:	0f b6 00             	movzbl (%eax),%eax
 6ca:	84 c0                	test   %al,%al
 6cc:	0f 85 71 fe ff ff    	jne    543 <printf+0x22>
    }
  }
}
 6d2:	c9                   	leave  
 6d3:	c3                   	ret    

000006d4 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 6d4:	55                   	push   %ebp
 6d5:	89 e5                	mov    %esp,%ebp
 6d7:	83 ec 10             	sub    $0x10,%esp
  Header *bp, *p;

  bp = (Header*)ap - 1;
 6da:	8b 45 08             	mov    0x8(%ebp),%eax
 6dd:	83 e8 08             	sub    $0x8,%eax
 6e0:	89 45 f8             	mov    %eax,-0x8(%ebp)
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6e3:	a1 0c 0c 00 00       	mov    0xc0c,%eax
 6e8:	89 45 fc             	mov    %eax,-0x4(%ebp)
 6eb:	eb 24                	jmp    711 <free+0x3d>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6ed:	8b 45 fc             	mov    -0x4(%ebp),%eax
 6f0:	8b 00                	mov    (%eax),%eax
 6f2:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 6f5:	77 12                	ja     709 <free+0x35>
 6f7:	8b 45 f8             	mov    -0x8(%ebp),%eax
 6fa:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 6fd:	77 24                	ja     723 <free+0x4f>
 6ff:	8b 45 fc             	mov    -0x4(%ebp),%eax
 702:	8b 00                	mov    (%eax),%eax
 704:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 707:	77 1a                	ja     723 <free+0x4f>
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 709:	8b 45 fc             	mov    -0x4(%ebp),%eax
 70c:	8b 00                	mov    (%eax),%eax
 70e:	89 45 fc             	mov    %eax,-0x4(%ebp)
 711:	8b 45 f8             	mov    -0x8(%ebp),%eax
 714:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 717:	76 d4                	jbe    6ed <free+0x19>
 719:	8b 45 fc             	mov    -0x4(%ebp),%eax
 71c:	8b 00                	mov    (%eax),%eax
 71e:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 721:	76 ca                	jbe    6ed <free+0x19>
      break;
  if(bp + bp->s.size == p->s.ptr){
 723:	8b 45 f8             	mov    -0x8(%ebp),%eax
 726:	8b 40 04             	mov    0x4(%eax),%eax
 729:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
 730:	8b 45 f8             	mov    -0x8(%ebp),%eax
 733:	01 c2                	add    %eax,%edx
 735:	8b 45 fc             	mov    -0x4(%ebp),%eax
 738:	8b 00                	mov    (%eax),%eax
 73a:	39 c2                	cmp    %eax,%edx
 73c:	75 24                	jne    762 <free+0x8e>
    bp->s.size += p->s.ptr->s.size;
 73e:	8b 45 f8             	mov    -0x8(%ebp),%eax
 741:	8b 50 04             	mov    0x4(%eax),%edx
 744:	8b 45 fc             	mov    -0x4(%ebp),%eax
 747:	8b 00                	mov    (%eax),%eax
 749:	8b 40 04             	mov    0x4(%eax),%eax
 74c:	01 c2                	add    %eax,%edx
 74e:	8b 45 f8             	mov    -0x8(%ebp),%eax
 751:	89 50 04             	mov    %edx,0x4(%eax)
    bp->s.ptr = p->s.ptr->s.ptr;
 754:	8b 45 fc             	mov    -0x4(%ebp),%eax
 757:	8b 00                	mov    (%eax),%eax
 759:	8b 10                	mov    (%eax),%edx
 75b:	8b 45 f8             	mov    -0x8(%ebp),%eax
 75e:	89 10                	mov    %edx,(%eax)
 760:	eb 0a                	jmp    76c <free+0x98>
  } else
    bp->s.ptr = p->s.ptr;
 762:	8b 45 fc             	mov    -0x4(%ebp),%eax
 765:	8b 10                	mov    (%eax),%edx
 767:	8b 45 f8             	mov    -0x8(%ebp),%eax
 76a:	89 10                	mov    %edx,(%eax)
  if(p + p->s.size == bp){
 76c:	8b 45 fc             	mov    -0x4(%ebp),%eax
 76f:	8b 40 04             	mov    0x4(%eax),%eax
 772:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
 779:	8b 45 fc             	mov    -0x4(%ebp),%eax
 77c:	01 d0                	add    %edx,%eax
 77e:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 781:	75 20                	jne    7a3 <free+0xcf>
    p->s.size += bp->s.size;
 783:	8b 45 fc             	mov    -0x4(%ebp),%eax
 786:	8b 50 04             	mov    0x4(%eax),%edx
 789:	8b 45 f8             	mov    -0x8(%ebp),%eax
 78c:	8b 40 04             	mov    0x4(%eax),%eax
 78f:	01 c2                	add    %eax,%edx
 791:	8b 45 fc             	mov    -0x4(%ebp),%eax
 794:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 797:	8b 45 f8             	mov    -0x8(%ebp),%eax
 79a:	8b 10                	mov    (%eax),%edx
 79c:	8b 45 fc             	mov    -0x4(%ebp),%eax
 79f:	89 10                	mov    %edx,(%eax)
 7a1:	eb 08                	jmp    7ab <free+0xd7>
  } else
    p->s.ptr = bp;
 7a3:	8b 45 fc             	mov    -0x4(%ebp),%eax
 7a6:	8b 55 f8             	mov    -0x8(%ebp),%edx
 7a9:	89 10                	mov    %edx,(%eax)
  freep = p;
 7ab:	8b 45 fc             	mov    -0x4(%ebp),%eax
 7ae:	a3 0c 0c 00 00       	mov    %eax,0xc0c
}
 7b3:	c9                   	leave  
 7b4:	c3                   	ret    

000007b5 <morecore>:

static Header*
morecore(uint nu)
{
 7b5:	55                   	push   %ebp
 7b6:	89 e5                	mov    %esp,%ebp
 7b8:	83 ec 28             	sub    $0x28,%esp
  char *p;
  Header *hp;

  if(nu < 4096)
 7bb:	81 7d 08 ff 0f 00 00 	cmpl   $0xfff,0x8(%ebp)
 7c2:	77 07                	ja     7cb <morecore+0x16>
    nu = 4096;
 7c4:	c7 45 08 00 10 00 00 	movl   $0x1000,0x8(%ebp)
  p = sbrk(nu * sizeof(Header));
 7cb:	8b 45 08             	mov    0x8(%ebp),%eax
 7ce:	c1 e0 03             	shl    $0x3,%eax
 7d1:	89 04 24             	mov    %eax,(%esp)
 7d4:	e8 40 fc ff ff       	call   419 <sbrk>
 7d9:	89 45 f4             	mov    %eax,-0xc(%ebp)
  if(p == (char*)-1)
 7dc:	83 7d f4 ff          	cmpl   $0xffffffff,-0xc(%ebp)
 7e0:	75 07                	jne    7e9 <morecore+0x34>
    return 0;
 7e2:	b8 00 00 00 00       	mov    $0x0,%eax
 7e7:	eb 22                	jmp    80b <morecore+0x56>
  hp = (Header*)p;
 7e9:	8b 45 f4             	mov    -0xc(%ebp),%eax
 7ec:	89 45 f0             	mov    %eax,-0x10(%ebp)
  hp->s.size = nu;
 7ef:	8b 45 f0             	mov    -0x10(%ebp),%eax
 7f2:	8b 55 08             	mov    0x8(%ebp),%edx
 7f5:	89 50 04             	mov    %edx,0x4(%eax)
  free((void*)(hp + 1));
 7f8:	8b 45 f0             	mov    -0x10(%ebp),%eax
 7fb:	83 c0 08             	add    $0x8,%eax
 7fe:	89 04 24             	mov    %eax,(%esp)
 801:	e8 ce fe ff ff       	call   6d4 <free>
  return freep;
 806:	a1 0c 0c 00 00       	mov    0xc0c,%eax
}
 80b:	c9                   	leave  
 80c:	c3                   	ret    

0000080d <malloc>:

void*
malloc(uint nbytes)
{
 80d:	55                   	push   %ebp
 80e:	89 e5                	mov    %esp,%ebp
 810:	83 ec 28             	sub    $0x28,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 813:	8b 45 08             	mov    0x8(%ebp),%eax
 816:	83 c0 07             	add    $0x7,%eax
 819:	c1 e8 03             	shr    $0x3,%eax
 81c:	83 c0 01             	add    $0x1,%eax
 81f:	89 45 ec             	mov    %eax,-0x14(%ebp)
  if((prevp = freep) == 0){
 822:	a1 0c 0c 00 00       	mov    0xc0c,%eax
 827:	89 45 f0             	mov    %eax,-0x10(%ebp)
 82a:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 82e:	75 23                	jne    853 <malloc+0x46>
    base.s.ptr = freep = prevp = &base;
 830:	c7 45 f0 04 0c 00 00 	movl   $0xc04,-0x10(%ebp)
 837:	8b 45 f0             	mov    -0x10(%ebp),%eax
 83a:	a3 0c 0c 00 00       	mov    %eax,0xc0c
 83f:	a1 0c 0c 00 00       	mov    0xc0c,%eax
 844:	a3 04 0c 00 00       	mov    %eax,0xc04
    base.s.size = 0;
 849:	c7 05 08 0c 00 00 00 	movl   $0x0,0xc08
 850:	00 00 00 
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 853:	8b 45 f0             	mov    -0x10(%ebp),%eax
 856:	8b 00                	mov    (%eax),%eax
 858:	89 45 f4             	mov    %eax,-0xc(%ebp)
    if(p->s.size >= nunits){
 85b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 85e:	8b 40 04             	mov    0x4(%eax),%eax
 861:	3b 45 ec             	cmp    -0x14(%ebp),%eax
 864:	72 4d                	jb     8b3 <malloc+0xa6>
      if(p->s.size == nunits)
 866:	8b 45 f4             	mov    -0xc(%ebp),%eax
 869:	8b 40 04             	mov    0x4(%eax),%eax
 86c:	3b 45 ec             	cmp    -0x14(%ebp),%eax
 86f:	75 0c                	jne    87d <malloc+0x70>
        prevp->s.ptr = p->s.ptr;
 871:	8b 45 f4             	mov    -0xc(%ebp),%eax
 874:	8b 10                	mov    (%eax),%edx
 876:	8b 45 f0             	mov    -0x10(%ebp),%eax
 879:	89 10                	mov    %edx,(%eax)
 87b:	eb 26                	jmp    8a3 <malloc+0x96>
      else {
        p->s.size -= nunits;
 87d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 880:	8b 40 04             	mov    0x4(%eax),%eax
 883:	2b 45 ec             	sub    -0x14(%ebp),%eax
 886:	89 c2                	mov    %eax,%edx
 888:	8b 45 f4             	mov    -0xc(%ebp),%eax
 88b:	89 50 04             	mov    %edx,0x4(%eax)
        p += p->s.size;
 88e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 891:	8b 40 04             	mov    0x4(%eax),%eax
 894:	c1 e0 03             	shl    $0x3,%eax
 897:	01 45 f4             	add    %eax,-0xc(%ebp)
        p->s.size = nunits;
 89a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 89d:	8b 55 ec             	mov    -0x14(%ebp),%edx
 8a0:	89 50 04             	mov    %edx,0x4(%eax)
      }
      freep = prevp;
 8a3:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8a6:	a3 0c 0c 00 00       	mov    %eax,0xc0c
      return (void*)(p + 1);
 8ab:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8ae:	83 c0 08             	add    $0x8,%eax
 8b1:	eb 38                	jmp    8eb <malloc+0xde>
    }
    if(p == freep)
 8b3:	a1 0c 0c 00 00       	mov    0xc0c,%eax
 8b8:	39 45 f4             	cmp    %eax,-0xc(%ebp)
 8bb:	75 1b                	jne    8d8 <malloc+0xcb>
      if((p = morecore(nunits)) == 0)
 8bd:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8c0:	89 04 24             	mov    %eax,(%esp)
 8c3:	e8 ed fe ff ff       	call   7b5 <morecore>
 8c8:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8cb:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8cf:	75 07                	jne    8d8 <malloc+0xcb>
        return 0;
 8d1:	b8 00 00 00 00       	mov    $0x0,%eax
 8d6:	eb 13                	jmp    8eb <malloc+0xde>
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8d8:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8db:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8de:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8e1:	8b 00                	mov    (%eax),%eax
 8e3:	89 45 f4             	mov    %eax,-0xc(%ebp)
  }
 8e6:	e9 70 ff ff ff       	jmp    85b <malloc+0x4e>
}
 8eb:	c9                   	leave  
 8ec:	c3                   	ret    
