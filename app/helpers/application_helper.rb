module ApplicationHelper
  def active?(controller_action_hash_or_array_or_string)
    controller = params[:controller]
    action = params[:action]

    controller_action_hash =
      case controller_action_hash_or_array_or_string
      when Array
        { controller => controller_action_hash_or_array_or_string }
      when String
        { controller_action_hash_or_array_or_string => nil }
      when Hash
        controller_action_hash_or_array_or_string
      else
        raise ArgumentError, "what are you even ..."
      end

    controller_action_hash = Hash[controller_action_hash.map{ |k, v| [k, [v || action].flatten] }]

    "active" if controller_action_hash.key?(controller) && controller_action_hash[controller].include?(action)
  end
end
