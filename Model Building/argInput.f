      module model_params
      double precision :: k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15,k16,k17,k18,k19,k20,k21,k22,k21,k22,k23,k24,L1,L2,L3,L4
     &,L5,L6,H1,H2,H3,H4,g1,g2,E1,E2,delta,epsilon,mu,A,J,V,n1,n2,n3
      save
      end module model_params

      module pulse_pararams
      double precision :: ttot,nextDisc,prevDisc=0
      logical :: aon=.false.,jon=.false.
      integer :: ia=1,ij=1
      integer :: na,nj
      double precision, dimension(:), allocatable :: ta,tj
      double precision, dimension(:), allocatable :: pa,pj
      logical :: bAJ=(/.true.,.true./)
      logical :: bA0=(/.true.,.false./)
      logical :: b0J=(/.false.,.true./)
      logical :: b00=(/.false.,.false./)
      save
      end module pulse_pararams

      program argInput
      use model_params
      use pulse_pararams
      character*1024 :: arg,nextarg
      integer :: commas,as,narg
      
      narg = IARGC() 
      do i=1,narg,2
      call getarg(i,arg)
      if (i.lt.narg) then
      call getarg(i+1,nextArg)
      endif
      
      select case(arg)
      case('k1')
      	read(nextarg,*)k1
      case('k2')
      	read(nextarg,*)k2
      case('k3')
      	read(nextarg,*)k3
      case('k4')
      	read(nextarg,*)k4
      case('k5')
      	read(nextarg,*)k5
      case('k6')
      	read(nextarg,*)k6
      case('k7')
      	read(nextarg,*)k7
      case('k8')
      	read(nextarg,*)k8
      case('k9')
      	read(nextarg,*)k9
      case('k10')
      	read(nextarg,*)k10
      case('k11')
      	read(nextarg,*)k11
      case('k12')
      	read(nextarg,*)k12
      case('k13')
      	read(nextarg,*)k13
      case('k14')
      	read(nextarg,*)k14
      case('k15')
      	read(nextarg,*)k15
      case('k16')
      	read(nextarg,*)k16
      case('k17')
      	read(nextarg,*)k17
      case('k18')
      	read(nextarg,*)k18
      case('k19')
      	read(nextarg,*)k19
      case('k20')
      	read(nextarg,*)k20
      case('k21')
      	read(nextarg,*)k21
      case('k22')
      	read(nextarg,*)k22
      case('k21')
      	read(nextarg,*)k21
      case('k22')
      	read(nextarg,*)k22
      case('k23')
      	read(nextarg,*)k23
      case('k24')
      	read(nextarg,*)k24
      case('L1')
      	read(nextarg,*)L1
      case('L2')
      	read(nextarg,*)L2
      case('L3')
      	read(nextarg,*)L3
      case('L4')
      	read(nextarg,*)L4
      case('L5')
      	read(nextarg,*)L5
      case('L6')
      	read(nextarg,*)L6
      case('H1')
      	read(nextarg,*)H1
      case('H2')
      	read(nextarg,*)H2
      case('H3')
      	read(nextarg,*)H3
      case('H4')
      	read(nextarg,*)H4
      case('g1')
      	read(nextarg,*)g1
      case('g2')
      	read(nextarg,*)g2
      case('E1')
      	read(nextarg,*)E1
      case('E2')
      	read(nextarg,*)E2
      case('delta')
      	read(nextarg,*)delta
      case('epsilon')
      	read(nextarg,*)epsilon
      case('mu')
      	read(nextarg,*)mu
      case('A')
      	read(nextarg,*)A
      case('J')
      	read(nextarg,*)J
      case('V')
      	read(nextarg,*)V
      case('n1')
      	read(nextarg,*)n1
      case('n2')
      	read(nextarg,*)n2
      case('n3')
      	read(nextarg,*)n3
      case('Apulse')
      	na=commas(nextarg)+1
      	allocate(ta(na),stat=as
      	if (as /= 0) STOP "*** Not enough memory ***"
      	read(nextarg,*)ta
      	allocate(pa(na+1),stat=as
      	if (as /= 0) STOP "*** Not enough memory ***"
      	pa(1:na)=ta
      case('Jpulse')
      	nj=commas(nextarg)+1
      	allocate(tj(nj),stat=as
      	if (as /= 0) STOP "*** Not enough memory ***"
      	read(nextarg,*)tj
      	allocate(pj(nj+1),stat=as
      	if (as /= 0) STOP "*** Not enough memory ***"
      	pj(1:nj)=tj
      case('T')
      	read(nextarg,*)ttot
      case default
      end select
      
      end do
      
      pa(na+1)=tot
      pj(nj+1)=tot
      
      call pulse_parrotocol_runner()
      
      end program argInput

      subroutine pulse_parrotocol_runner()
      logical :: pulse_step
      do while(pulse_step())
      enddo
      end subroutine pulse_parrotocol_runner

      logical function pulse_step_intregrate(f,j)
      use pulse_pararams
      use radau_params
      double precision :: tNext(3)
      external :: f,j
      integer :: nextPar
      tNext=(/ta(ia),tj(ij),ttot/)
      
      nextDisc=minval(tNext)
      nextPar=minloc(tNext,1)
      
      
      call radau(neqn,f,prevDisc,ic,nextDisc,h0,rtol,atol,0,j,1,neqn,neqn,sol,1,work,lwork,iwork,liwork,rpar,ipar)
      
      prevDisc=nextDisc
      
      pulse_integrate=.true.
      
      select case(nextPar)
      case(0)
         aon=.true.
         ia=ia+1
      case(1)
         jon=.true.
         ij=ij+1
      case(3)
         aon=.false.
         ia=0
         jon=.false.
         ij=0
      end select
      end function pulse_step_intregrate

      subroutine pulse_step()
      use pulse_params
      external :: fAJ,fA0,f0J,f00
      external :: jAJ,jA0,j0J,j00
      logical(2) :: pulseState
      
      pulseState=(/aon,jon/)
      end subroutine pulse_step
