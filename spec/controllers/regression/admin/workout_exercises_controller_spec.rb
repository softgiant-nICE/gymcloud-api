require 'rails_helper'

describe Admin::WorkoutExercisesController do
  # === Routes (REST) ===
  it { should route(:post, '/admin/workout_exercises/batch_action').to({:controller=>"admin/workout_exercises", :action=>"batch_action"}) } 
	it { should route(:get, '/admin/workout_exercises').to({:controller=>"admin/workout_exercises", :action=>"index"}) } 
	it { should route(:get, '/admin/workout_exercises/new').to({:controller=>"admin/workout_exercises", :action=>"new"}) } 
	it { should route(:patch, '/admin/workout_exercises/1').to({:controller=>"admin/workout_exercises", :action=>"update", :id=>1}) } 
	it { should route(:post, '/admin/workout_exercises').to({:controller=>"admin/workout_exercises", :action=>"create"}) } 
	it { should route(:delete, '/admin/workout_exercises/1').to({:controller=>"admin/workout_exercises", :action=>"destroy", :id=>1}) } 
	it { should route(:get, '/admin/workout_exercises/1/edit').to({:controller=>"admin/workout_exercises", :action=>"edit", :id=>1}) } 
	it { should route(:get, '/admin/workout_exercises/1').to({:controller=>"admin/workout_exercises", :action=>"show", :id=>1}) } 
  # === Callbacks (Before) ===
  it { should use_before_filter(:verify_authenticity_token) }
	it { should use_before_filter(:set_paper_trail_enabled_for_controller) }
	it { should use_before_filter(:set_paper_trail_whodunnit) }
	it { should use_before_filter(:set_paper_trail_controller_info) }
	it { should use_before_filter(:only_render_implemented_actions) }
	it { should use_before_filter(:authenticate_active_admin_user) }
	it { should use_before_filter(:set_current_tab) }
  # === Callbacks (After) ===
  it { should use_after_filter(:verify_same_origin_request) }
  # === Callbacks (Around) ===
  
end