net.Receive("OpenMenu", function()

	local ply = LocalPlayer()

	local TakMenu = vgui.Create( "DFrame" )
	TakMenu:SetTitle( "You have died." )
	TakMenu:SetSize( 290, 70 )
	TakMenu:Center()
	TakMenu:MakePopup()
	TakMenu:SetDraggable( false )
	TakMenu:ShowCloseButton( false )
	TakMenu:SetPaintBorderEnabled( true )
	TakMenu.Paint = function( self, w, h ) 
	draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 220 ) ) 
	draw.RoundedBox( 0, 0, 20, w, 2, Color( 0, 204, 255, 255 ) )
	end

	local TakButtonA = vgui.Create( "DButton", TakMenu )
	TakButtonA:SetSize( 120, 30)
	TakButtonA:SetText( "Accept" )
	TakButtonA:SetPos( 20, 30 )	
	TakButtonA:SetTextColor( Color( 255, 255, 255, 255 ) )
	TakButtonA.Paint = function( self, w, h ) 
	draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 255 ) ) 	
	draw.RoundedBox( 0, 0, 0, 120, 2, Color( 255, 255, 255, 255 ) ) 
	draw.RoundedBox( 0, 0, 28, 120, 2, Color( 255, 255, 255, 255 ) ) 
	draw.RoundedBox( 0, 0, 0, 2, 30, Color( 255, 255, 255, 255 ) ) 
	draw.RoundedBox( 0, 118, 0, 2, 30, Color( 255, 255, 255, 255 ) ) 
	end
	TakButtonA.DoClick = function() TakMenu:Close() end		
	
	local TakButtonB = vgui.Create( "DButton", TakMenu )
	TakButtonB:SetSize( 120, 30)
	TakButtonB:SetText( "I Was RDM'ed!" )
	TakButtonB:SetPos( 150, 30 )
	TakButtonB:SetTextColor( Color( 255, 255, 255, 255 ) )
	TakButtonB.Paint = function( self, w, h ) 	
	draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 255 ) ) 
	draw.RoundedBox( 0, 0, 0, 120, 2, Color( 255, 255, 255, 255 ) ) 
	draw.RoundedBox( 0, 0, 28, 120, 2, Color( 255, 255, 255, 255 ) ) 
	draw.RoundedBox( 0, 0, 0, 2, 30, Color( 255, 255, 255, 255 ) ) 
	draw.RoundedBox( 0, 118, 0, 2, 30, Color( 255, 255, 255, 255 ) ) 	
	end
	TakButtonB.DoClick = function ()
		ply:ConCommand("Say @I need assistance!")
		TakMenu:Close()
	end	
end)