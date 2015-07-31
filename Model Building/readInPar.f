      
	  
      module model_params
      double precision k1, k2, k3, k4, k5, k6, k7, k8, k9, k10, k11
      double precision k12, k13, k14, k15, k16, k17, k18, H1, H2, H3, H4
      double precision  L1, L2, L3, L4
      double precision :: epsilon = 9.2D-6, delta = 3.5D-7
	save
      end module model_params
	  
	  
	  module pulse_params
		logical :: aon,jon
		integer :: ia=0,ij=0
		external :: feval
	    integer :: na,nj
		double precision :: ttot,nextDisc,prevDisc=0
		double precision, dimension(:), allocatable :: ta,pa,tj,pj
	  save
	  end module pulse_params
	  
	  
      module radau_params
      integer :: md 
      parameter (md=400) 
	  integer lwork, liwork 
      parameter (lwork=(7+1)*md*md+(3*7+3)*md+20, 
     +           liwork=(2+(7-1)/2)*md+20) 
 
      integer :: neqn=2,mljac=2,mujac=2,mlmas=2,mumas=2, 
     +        iwork(20+4*md),ipar(md+1),idid 
      double precision :: h0=1.D-5,rtol=1.D-3,atol=1.D-5, 
     +                 work(lwork),rpar(md+1)
	 
	 save
	 end

	  
	  
	  program argInput
	  
	  use pulse_params
	  use model_params
	  character*1024 :: arg,nextarg
	  character :: adjustr
	  integer :: commas,as,narg
	
	  open(unit=9,action='readwrite')
	  narg = IARGC() 
	  do 10 i=1,narg,2
		call getarg(i, arg)
		if (i.lt.narg) then
			call getarg(i+1, nextarg);
		endif
		
		select case(arg)
		case('Apulse')
			na=commas(nextarg)+1
			allocate(ta(na),stat=as)
			if (as /= 0) STOP "*** Not enough memory ***"
			read(nextarg, *)tatp
			write(*,*) 'ATP Pulse Times:'
			write(*,*)ta
		case('Jpulse')
			nj=commas(nextarg)+1
			write(*,*) 'nivm',nj
			allocate(tj(nj),stat=as)
			if (as /= 0) STOP "*** Not enough memory ***"
			read(nextarg, *)tj
			write(*,*) 'IVM Pulse Times:'
			write(*,*)tj
		case('T')
			read(nextarg,*)ttot
		case('k1')
			read(nextarg,*)k1
			write(*,*) 'k1',k1
		case('k2')
			read(nextarg,*)k2
			write(*,*) 'k2',k2
		case('k3')
			read(nextarg,*)k3
			write(*,*) 'k3',k3
		case('k4')
			read(nextarg,*)k4
			write(*,*) 'k4',k4
		case('k5')
			read(nextarg,*)k5
			write(*,*) 'k5',k5
		case('k6')
			read(nextarg,*)k6
			write(*,*) 'k6',k6
		case('k7')
			read(nextarg,*)k7
			write(*,*) 'k7',k7
		case('k8')
			read(nextarg,*)k8
			write(*,*) 'k8',k8
		case('k9')
			read(nextarg,*)k9
			write(*,*) 'k9',k9
		case('k10')
			read(nextarg,*)k10
			write(*,*) 'k10',k10
		case('k11')
			read(nextarg,*)k11
			write(*,*) 'k11',k11
		case('k12')
			read(nextarg,*)k12
			write(*,*) 'k12',k12
		case('k13')
			read(nextarg,*)k13
			write(*,*) 'k13',k13
		case('k14')
			read(nextarg,*)k14
			write(*,*) 'k14',k14
		case('k15')
			read(nextarg,*)k15
			write(*,*) 'k15',k15
		case('k16')
			read(nextarg,*)k16
			write(*,*) 'k16',k16
		case('k17')
			read(nextarg,*)k17
			write(*,*) 'k17',k17
		case('k18')
			read(nextarg,*)k18
			write(*,*) 'k18',k18
		case('H1')
			read(nextarg,*)H1
			write(*,*) 'H1',H1
		case('H2')
			read(nextarg,*)H2
			write(*,*) 'H2',H2
		case('H3')
			read(nextarg,*)H3
			write(*,*) 'H3',H3
		case('H4')
			read(nextarg,*)H4
			write(*,*) 'H4',H4
		case('L1')
			read(nextarg,*)L1
			write(*,*) 'L1',L1
		case('L2')
			read(nextarg,*)L2
			write(*,*) 'L2',L2
		case('L3')
			read(nextarg,*)L3
			write(*,*) 'L3',L3
		case('L4')
			read(nextarg,*)L4
			write(*,*) 'L4',L4
		case default
			write(*,*) 'Parameter is not in model'
		end select
		!allocate pulse vectors to be used for integration subroutine
		allocate(pa(na+1),stat=as)
		if (as /= 0) STOP "*** Not enough memory ***"
		pa(1:na)=ta
		pa(na+1)=ttot+1
		allocate(pj(nj+1),stat=as)
		if (as /= 0) STOP "*** Not enough memory ***"
		pj(1:nj)=tj
		pj(nj+1)=ttot+1
		
  
   10  continue

	   end program 
	   
		integer function commas(str)
		character*1024 :: str
		integer :: ind,lastInd
	
		lastInd=0;
		commas=0;
		do
		 ind=index(str(lastInd:),",")
		 if (ind.eq.0) exit
		 lastInd=lastInd+ind
		 commas=commas+1
	 
		end do
		 
	
		end function
		


		
		logical function pulse_integrate(f,j)
		!should return true if another integration is required
		!allowing for easy chaining of integrations
		!
		!after each integration, the pulse_params module must be updated
		!in order to keep track of where we are in the pulse protocol
		use pulse_params
		use radau_params
		double precision ::  tNext(3)
		external :: f
		external :: j
		integer :: next
		
		

		
		tNext=(/ta(ia),tj(ij),ttot/)
		
		nextDisc=minval(tNext)
		nextPar=minloc(tNext,1)
		

		call radau(neqn,f,prevDisc,ic,nextDisc,h0,rtol,atol,0,
     1           j,1,neqn,neqn,dummy,0,neqn,neqn,sol,1,work,lwork,iwork
     2            ,liwork,rpar,ipar)

		
		prevDisc=nextDisc
		
		pulse_integrate=.true.
		select case(nextPar)
		case(1)
			aon=.true.
			ia=ia+1
		case(2)
			jon=.true.
			ij=ij+1
		case(3)
			!reset pulse params so we can restart integration
			aon=.false.
			jon=.false.
			ia=0
			ij=0
			pulse_integrate=.false.
		end select
		

		
		end function pulse_integrate
		
		logical function pulse_step()
		use pulse_params	
		logical :: pulse_integrate
		external :: faj, fa0, f0j, f00
		external :: jaj, ja0, j0j, j00	
		if (aon) then
			if (jon) then
				pulse_step=pulse_integrate(faj,jaj)
			else
				pulse_step=pulse_integrate(fa0,ja0)
			endif
		else
			if (jon) then
				pulse_step=pulse_integrate(f0j,j0j)
			else
				pulse_step=pulse_integrate(f00,j00)
			endif
		endif
		
		end function
		
		subroutine pulse_protocol_runner()
        logical :: pulse_step
		do while(pulse_step())
		enddo
		end subroutine pulse_protocol_runner
		
		subroutine dummy
		end subroutine dummy
	   
