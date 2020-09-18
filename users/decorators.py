from django.shortcuts import redirect

def unauthenticated_user(view_func):
    def wrapper_func(request, *args, **kwargs):

        # restricting logged in users to view login or register page without being loggedout
        if request.user.is_authenticated:
            return redirect('mainHome')
        else:
            return view_func(request, *args, **kwargs)
        
    return wrapper_func


# For the allowed users as groups or according to their roles and authorization they can view or access the pages

def allowed_users(allowed_roles = []):
    def decorator(view_func):
        def wrapper_func(request, *args, **kwargs):

            group = None
            if request.user.groups.exists():       # checking if the logged-in user is in some group or not
                group = request.user.groups.all()[0].name   # accessing the groups and getting the name of the first group name in the defined groups list
            
            if group in allowed_roles:                # if the group matches like if the user is admin then the admin page would be returned other wise user page will be returned in the else section
                return view_func(request, *args, **kwargs)
            else:
                return redirect('mainHome')
        return wrapper_func
    return decorator