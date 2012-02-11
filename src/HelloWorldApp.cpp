/**
 * EclipseLovesCinder example application
 *
 **********************************************************
 **********************************************************
 ********************* IMPORTANT **************************
 * On first run:
 * 	- Select Project -> Clean...
 *
 *  - If change the project name, you have to tell the debugger where the new one is:
 *  	Go into Run -> Debug Configurations
 *  	Set where the application lives to something like this
 *  	Debug/{APPNAME}/Contents/MacOS/{APPNAME}
 *
 **********************************************************
 **********************************************************
 *
 * This project is released under public domain, do whatever with it.
 *
 *
 * Mario Gonzalez
 * http://onedayitwillmake
 */

#include "cinder/app/AppBasic.h"
#include "cinder/gl/gl.h"
#include "cinder/gl/Texture.h"
#include "cinder/ImageIo.h"
#include "cinder/Vector.h"
#include "cinder/app/MouseEvent.h"
#include "cinder/Rand.h"
#include "Resources.h"
#include "gl.h"
#include "cinder/Display.h"
#include "BulletMLController.h"

class HelloWorldApp : public ci::app::AppBasic {
public:
	void setup();
	void prepareSettings( ci::app::AppBasic::Settings *settings );
	void mouseDown( ci::app::MouseEvent event );
	void mouseMove( ci::app::MouseEvent event );
	void update();
	void draw();
	void shutdown();

	ci::gl::Texture texture;
    BulletMLController* bulletController;
};

void HelloWorldApp::prepareSettings( ci::app::AppBasic::Settings *settings ) {
	settings->setWindowSize( 800, 600 );

	if( ci::Display::getDisplays().size() > 1 )
		settings->setDisplay( ci::Display::getDisplays().at(1) );

}

void HelloWorldApp::setup() {
	// Test loading a texture
	texture = ci::gl::Texture( ci::loadImage( ci::app::App::get()->loadResource( RES_WHEEL ) ) );
	ci::gl::enableAlphaBlending();

	std::string *stdStringFilePath = new std::string( getResourcePath("sample.xml").string() );
	bulletController = new BulletMLController( stdStringFilePath );
}

void HelloWorldApp::mouseDown( ci::app::MouseEvent event ) {
}

void HelloWorldApp::mouseMove( ci::app::MouseEvent event ) {
	bulletController->ship->x = event.getPos().x-32;
	bulletController->ship->y = event.getPos().y-96;
}



void HelloWorldApp::update() {
	bulletController->update();
}
void HelloWorldApp::draw() {
	ci::gl::clear( ci::Color( 0, 0, 0 ) );

	if ( texture ) {
		ci::gl::color( ci::ColorA(1.0f, 1.0f, 1.0f, 1.0f) );

		for (size_t i = 0; i < bulletController->objs.size(); i++) {
//			if( !bulletController->objs[i]->hasCCNode ) {
				if( bulletController->objs[i]->type == BulletTypeBullet )  {
					Bullet* bullet = (Bullet*)bulletController->objs[i];
					ci::gl::draw( texture, ci::Vec2f(bullet->x, bullet->y) );
				}
//			}
		}

		ci::gl::color( ci::ColorA(0.0f, 1.0f, 1.0f, 1.0f) );
		ci::gl::draw( texture, ci::Vec2f(bulletController->ship->x, bulletController->ship->y) );
	}
}


void HelloWorldApp::shutdown() {
	std::cout << "Shutdown..." << std::endl;
	AppBasic::shutdown();
}
CINDER_APP_BASIC( HelloWorldApp, ci::app::RendererGl )
