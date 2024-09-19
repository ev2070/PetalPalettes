// Script that will spawn a given amount
// of particles at given positions
function create_particles(_x, _y, _xvar, _yvar, _amt) {
    for (i = 0; i < _amt; i++) {
        instance_create_depth(_x+random_range(-_xvar,_xvar), 
							  _y+random_range(-_yvar,_yvar), -2, obj_particle);
    }
}
